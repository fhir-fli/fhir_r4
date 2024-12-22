import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SpecimenDefinition]
/// A kind of specimen with associated set of requirements.
class SpecimenDefinition extends DomainResource {
  /// Primary constructor for
  /// [SpecimenDefinition]

  const SpecimenDefinition({
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
          resourceType: R4ResourceType.SpecimenDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return SpecimenDefinition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      typeCollected: JsonParser.parseObject<CodeableConcept>(
        json,
        'typeCollected',
        CodeableConcept.fromJson,
      ),
      patientPreparation: (json['patientPreparation'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      timeAspect: JsonParser.parsePrimitive<FhirString>(
        json,
        'timeAspect',
        FhirString.fromJson,
      ),
      collection: (json['collection'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      typeTested: (json['typeTested'] as List<dynamic>?)
          ?.map<SpecimenDefinitionTypeTested>(
            (v) => SpecimenDefinitionTypeTested.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SpecimenDefinition]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinition';

  /// [identifier]
  /// A business identifier associated with the kind of specimen.
  final Identifier? identifier;

  /// [typeCollected]
  /// The kind of material to be collected.
  final CodeableConcept? typeCollected;

  /// [patientPreparation]
  /// Preparation of the patient for specimen collection.
  final List<CodeableConcept>? patientPreparation;

  /// [timeAspect]
  /// Time aspect of specimen collection (duration or offset).
  final FhirString? timeAspect;

  /// [collection]
  /// The action to be performed for collecting the specimen.
  final List<CodeableConcept>? collection;

  /// [typeTested]
  /// Specimen conditioned in a container as expected by the testing
  /// laboratory.
  final List<SpecimenDefinitionTypeTested>? typeTested;
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
    addField('identifier', identifier);
    addField('typeCollected', typeCollected);
    addField('patientPreparation', patientPreparation);
    addField('timeAspect', timeAspect);
    addField('collection', collection);
    addField('typeTested', typeTested);
    return json;
  }

  @override
  SpecimenDefinition clone() => throw UnimplementedError();
  @override
  SpecimenDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    CodeableConcept? typeCollected,
    List<CodeableConcept>? patientPreparation,
    FhirString? timeAspect,
    List<CodeableConcept>? collection,
    List<SpecimenDefinitionTypeTested>? typeTested,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SpecimenDefinition(
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
    );
  }
}

/// [SpecimenDefinitionTypeTested]
/// Specimen conditioned in a container as expected by the testing
/// laboratory.
class SpecimenDefinitionTypeTested extends BackboneElement {
  /// Primary constructor for
  /// [SpecimenDefinitionTypeTested]

  const SpecimenDefinitionTypeTested({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.isDerived,
    this.type,
    required this.preference,
    this.container,
    this.requirement,
    this.retentionTime,
    this.rejectionCriterion,
    this.handling,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionTypeTested.fromJson(
    Map<String, dynamic> json,
  ) {
    return SpecimenDefinitionTypeTested(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      isDerived: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isDerived',
        FhirBoolean.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      preference: JsonParser.parsePrimitive<SpecimenContainedPreference>(
        json,
        'preference',
        SpecimenContainedPreference.fromJson,
      )!,
      container: JsonParser.parseObject<SpecimenDefinitionContainer>(
        json,
        'container',
        SpecimenDefinitionContainer.fromJson,
      ),
      requirement: JsonParser.parsePrimitive<FhirString>(
        json,
        'requirement',
        FhirString.fromJson,
      ),
      retentionTime: JsonParser.parseObject<FhirDuration>(
        json,
        'retentionTime',
        FhirDuration.fromJson,
      ),
      rejectionCriterion: (json['rejectionCriterion'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      handling: (json['handling'] as List<dynamic>?)
          ?.map<SpecimenDefinitionHandling>(
            (v) => SpecimenDefinitionHandling.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SpecimenDefinitionTypeTested]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionTypeTested.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionTypeTested.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionTypeTested.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionTypeTested '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionTypeTested]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionTypeTested.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenDefinitionTypeTested.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinitionTypeTested';

  /// [isDerived]
  /// Primary of secondary specimen.
  final FhirBoolean? isDerived;

  /// [type]
  /// The kind of specimen conditioned for testing expected by lab.
  final CodeableConcept? type;

  /// [preference]
  /// The preference for this type of conditioned specimen.
  final SpecimenContainedPreference preference;

  /// [container]
  /// The specimen's container.
  final SpecimenDefinitionContainer? container;

  /// [requirement]
  /// Requirements for delivery and special handling of this kind of
  /// conditioned specimen.
  final FhirString? requirement;

  /// [retentionTime]
  /// The usual time that a specimen of this kind is retained after the
  /// ordered tests are completed, for the purpose of additional testing.
  final FhirDuration? retentionTime;

  /// [rejectionCriterion]
  /// Criterion for rejection of the specimen in its container by the
  /// laboratory.
  final List<CodeableConcept>? rejectionCriterion;

  /// [handling]
  /// Set of instructions for preservation/transport of the specimen at a
  /// defined temperature interval, prior the testing process.
  final List<SpecimenDefinitionHandling>? handling;
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

  @override
  SpecimenDefinitionTypeTested clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionTypeTested copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? isDerived,
    CodeableConcept? type,
    SpecimenContainedPreference? preference,
    SpecimenDefinitionContainer? container,
    FhirString? requirement,
    FhirDuration? retentionTime,
    List<CodeableConcept>? rejectionCriterion,
    List<SpecimenDefinitionHandling>? handling,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SpecimenDefinitionTypeTested(
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
    );
  }
}

/// [SpecimenDefinitionContainer]
/// The specimen's container.
class SpecimenDefinitionContainer extends BackboneElement {
  /// Primary constructor for
  /// [SpecimenDefinitionContainer]

  const SpecimenDefinitionContainer({
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionContainer.fromJson(
    Map<String, dynamic> json,
  ) {
    return SpecimenDefinitionContainer(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      material: JsonParser.parseObject<CodeableConcept>(
        json,
        'material',
        CodeableConcept.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      cap: JsonParser.parseObject<CodeableConcept>(
        json,
        'cap',
        CodeableConcept.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      capacity: JsonParser.parseObject<Quantity>(
        json,
        'capacity',
        Quantity.fromJson,
      ),
      minimumVolumeX: JsonParser.parsePolymorphic<
          MinimumVolumeXSpecimenDefinitionContainer>(json, {
        'minimumVolumeQuantity': Quantity.fromJson,
        'minimumVolumeString': FhirString.fromJson,
      }),
      additive: (json['additive'] as List<dynamic>?)
          ?.map<SpecimenDefinitionAdditive>(
            (v) => SpecimenDefinitionAdditive.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      preparation: JsonParser.parsePrimitive<FhirString>(
        json,
        'preparation',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [SpecimenDefinitionContainer]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionContainer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionContainer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionContainer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionContainer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionContainer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionContainer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenDefinitionContainer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinitionContainer';

  /// [material]
  /// The type of material of the container.
  final CodeableConcept? material;

  /// [type]
  /// The type of container used to contain this kind of specimen.
  final CodeableConcept? type;

  /// [cap]
  /// Color of container cap.
  final CodeableConcept? cap;

  /// [description]
  /// The textual description of the kind of container.
  final FhirString? description;

  /// [capacity]
  /// The capacity (volume or other measure) of this kind of container.
  final Quantity? capacity;

  /// [minimumVolumeX]
  /// The minimum volume to be conditioned in the container.
  final MinimumVolumeXSpecimenDefinitionContainer? minimumVolumeX;

  /// [additive]
  /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  final List<SpecimenDefinitionAdditive>? additive;

  /// [preparation]
  /// Special processing that should be applied to the container for this
  /// kind of specimen.
  final FhirString? preparation;
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

  @override
  SpecimenDefinitionContainer clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionContainer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? material,
    CodeableConcept? type,
    CodeableConcept? cap,
    FhirString? description,
    Quantity? capacity,
    MinimumVolumeXSpecimenDefinitionContainer? minimumVolumeX,
    List<SpecimenDefinitionAdditive>? additive,
    FhirString? preparation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SpecimenDefinitionContainer(
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
    );
  }
}

/// [SpecimenDefinitionAdditive]
/// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
class SpecimenDefinitionAdditive extends BackboneElement {
  /// Primary constructor for
  /// [SpecimenDefinitionAdditive]

  const SpecimenDefinitionAdditive({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.additiveX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionAdditive.fromJson(
    Map<String, dynamic> json,
  ) {
    return SpecimenDefinitionAdditive(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      additiveX:
          JsonParser.parsePolymorphic<AdditiveXSpecimenDefinitionAdditive>(
              json, {
        'additiveCodeableConcept': CodeableConcept.fromJson,
        'additiveReference': Reference.fromJson,
      })!,
    );
  }

  /// Deserialize [SpecimenDefinitionAdditive]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionAdditive.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionAdditive.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionAdditive.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionAdditive '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionAdditive]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionAdditive.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenDefinitionAdditive.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinitionAdditive';

  /// [additiveX]
  /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  final AdditiveXSpecimenDefinitionAdditive additiveX;
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
    final additiveXFhirType = additiveX.fhirType;
    addField('additive${additiveXFhirType.capitalize()}', additiveX);

    return json;
  }

  @override
  SpecimenDefinitionAdditive clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionAdditive copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    AdditiveXSpecimenDefinitionAdditive? additiveX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SpecimenDefinitionAdditive(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      additiveX: additiveX ?? this.additiveX,
    );
  }
}

/// [SpecimenDefinitionHandling]
/// Set of instructions for preservation/transport of the specimen at a
/// defined temperature interval, prior the testing process.
class SpecimenDefinitionHandling extends BackboneElement {
  /// Primary constructor for
  /// [SpecimenDefinitionHandling]

  const SpecimenDefinitionHandling({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
    this.maxDuration,
    this.instruction,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionHandling.fromJson(
    Map<String, dynamic> json,
  ) {
    return SpecimenDefinitionHandling(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      temperatureQualifier: JsonParser.parseObject<CodeableConcept>(
        json,
        'temperatureQualifier',
        CodeableConcept.fromJson,
      ),
      temperatureRange: JsonParser.parseObject<Range>(
        json,
        'temperatureRange',
        Range.fromJson,
      ),
      maxDuration: JsonParser.parseObject<FhirDuration>(
        json,
        'maxDuration',
        FhirDuration.fromJson,
      ),
      instruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'instruction',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [SpecimenDefinitionHandling]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionHandling.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionHandling.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionHandling.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionHandling '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionHandling]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionHandling.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenDefinitionHandling.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinitionHandling';

  /// [temperatureQualifier]
  /// It qualifies the interval of temperature, which characterizes an
  /// occurrence of handling. Conditions that are not related to temperature
  /// may be handled in the instruction element.
  final CodeableConcept? temperatureQualifier;

  /// [temperatureRange]
  /// The temperature interval for this set of handling instructions.
  final Range? temperatureRange;

  /// [maxDuration]
  /// The maximum time interval of preservation of the specimen with these
  /// conditions.
  final FhirDuration? maxDuration;

  /// [instruction]
  /// Additional textual instructions for the preservation or transport of
  /// the specimen. For instance, 'Protect from light exposure'.
  final FhirString? instruction;
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
    addField('temperatureQualifier', temperatureQualifier);
    addField('temperatureRange', temperatureRange);
    addField('maxDuration', maxDuration);
    addField('instruction', instruction);
    return json;
  }

  @override
  SpecimenDefinitionHandling clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionHandling copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? temperatureQualifier,
    Range? temperatureRange,
    FhirDuration? maxDuration,
    FhirString? instruction,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SpecimenDefinitionHandling(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      temperatureQualifier: temperatureQualifier ?? this.temperatureQualifier,
      temperatureRange: temperatureRange ?? this.temperatureRange,
      maxDuration: maxDuration ?? this.maxDuration,
      instruction: instruction ?? this.instruction,
    );
  }
}
