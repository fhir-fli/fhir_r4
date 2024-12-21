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
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
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
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      typeCollected: json['typeCollected'] != null
          ? CodeableConcept.fromJson(
              json['typeCollected'] as Map<String, dynamic>,
            )
          : null,
      patientPreparation: json['patientPreparation'] != null
          ? (json['patientPreparation'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      timeAspect: (json['timeAspect'] != null || json['_timeAspect'] != null)
          ? FhirString.fromJson({
              'value': json['timeAspect'],
              '_value': json['_timeAspect'],
            })
          : null,
      collection: json['collection'] != null
          ? (json['collection'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      typeTested: json['typeTested'] != null
          ? (json['typeTested'] as List<dynamic>)
              .map<SpecimenDefinitionTypeTested>(
                (v) => SpecimenDefinitionTypeTested.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }

    if (typeCollected != null) {
      json['typeCollected'] = typeCollected!.toJson();
    }

    if (patientPreparation != null && patientPreparation!.isNotEmpty) {
      json['patientPreparation'] =
          patientPreparation!.map((e) => e.toJson()).toList();
    }

    if (timeAspect != null) {
      addField('timeAspect', timeAspect);
    }

    if (collection != null && collection!.isNotEmpty) {
      json['collection'] = collection!.map((e) => e.toJson()).toList();
    }

    if (typeTested != null && typeTested!.isNotEmpty) {
      json['typeTested'] = typeTested!.map((e) => e.toJson()).toList();
    }

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
      isDerived: (json['isDerived'] != null || json['_isDerived'] != null)
          ? FhirBoolean.fromJson({
              'value': json['isDerived'],
              '_value': json['_isDerived'],
            })
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      preference: SpecimenContainedPreference.fromJson({
        'value': json['preference'],
        '_value': json['_preference'],
      }),
      container: json['container'] != null
          ? SpecimenDefinitionContainer.fromJson(
              json['container'] as Map<String, dynamic>,
            )
          : null,
      requirement: (json['requirement'] != null || json['_requirement'] != null)
          ? FhirString.fromJson({
              'value': json['requirement'],
              '_value': json['_requirement'],
            })
          : null,
      retentionTime: json['retentionTime'] != null
          ? FhirDuration.fromJson(
              json['retentionTime'] as Map<String, dynamic>,
            )
          : null,
      rejectionCriterion: json['rejectionCriterion'] != null
          ? (json['rejectionCriterion'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      handling: json['handling'] != null
          ? (json['handling'] as List<dynamic>)
              .map<SpecimenDefinitionHandling>(
                (v) => SpecimenDefinitionHandling.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (isDerived != null) {
      addField('isDerived', isDerived);
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    addField('preference', preference);
    if (container != null) {
      json['container'] = container!.toJson();
    }

    if (requirement != null) {
      addField('requirement', requirement);
    }

    if (retentionTime != null) {
      json['retentionTime'] = retentionTime!.toJson();
    }

    if (rejectionCriterion != null && rejectionCriterion!.isNotEmpty) {
      json['rejectionCriterion'] =
          rejectionCriterion!.map((e) => e.toJson()).toList();
    }

    if (handling != null && handling!.isNotEmpty) {
      json['handling'] = handling!.map((e) => e.toJson()).toList();
    }

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
      material: json['material'] != null
          ? CodeableConcept.fromJson(
              json['material'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      cap: json['cap'] != null
          ? CodeableConcept.fromJson(
              json['cap'] as Map<String, dynamic>,
            )
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      capacity: json['capacity'] != null
          ? Quantity.fromJson(
              json['capacity'] as Map<String, dynamic>,
            )
          : null,
      minimumVolumeX: json['minimumVolumeQuantity'] != null
          ? Quantity.fromJson(
              json['minimumVolumeQuantity'] as Map<String, dynamic>,
            )
          : json['minimumVolumeString'] != null ||
                  json['_minimumVolumeString'] != null
              ? FhirString.fromJson({
                  'value': json['minimumVolumeString'],
                  '_value': json['_minimumVolumeString'],
                })
              : null,
      additive: json['additive'] != null
          ? (json['additive'] as List<dynamic>)
              .map<SpecimenDefinitionAdditive>(
                (v) => SpecimenDefinitionAdditive.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      preparation: (json['preparation'] != null || json['_preparation'] != null)
          ? FhirString.fromJson({
              'value': json['preparation'],
              '_value': json['_preparation'],
            })
          : null,
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (material != null) {
      json['material'] = material!.toJson();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (cap != null) {
      json['cap'] = cap!.toJson();
    }

    if (description != null) {
      addField('description', description);
    }

    if (capacity != null) {
      json['capacity'] = capacity!.toJson();
    }

    if (minimumVolumeX != null) {
      json['minimumVolume${minimumVolumeX!.fhirType.capitalize()}'] =
          minimumVolumeX!.toJson();
    }

    if (additive != null && additive!.isNotEmpty) {
      json['additive'] = additive!.map((e) => e.toJson()).toList();
    }

    if (preparation != null) {
      addField('preparation', preparation);
    }

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
      additiveX: json['additiveCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['additiveCodeableConcept'] as Map<String, dynamic>,
            )
          : Reference.fromJson(
              json['additiveReference'] as Map<String, dynamic>,
            ),
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['additive${additiveX.fhirType.capitalize()}'] = additiveX.toJson();

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
      temperatureQualifier: json['temperatureQualifier'] != null
          ? CodeableConcept.fromJson(
              json['temperatureQualifier'] as Map<String, dynamic>,
            )
          : null,
      temperatureRange: json['temperatureRange'] != null
          ? Range.fromJson(
              json['temperatureRange'] as Map<String, dynamic>,
            )
          : null,
      maxDuration: json['maxDuration'] != null
          ? FhirDuration.fromJson(
              json['maxDuration'] as Map<String, dynamic>,
            )
          : null,
      instruction: (json['instruction'] != null || json['_instruction'] != null)
          ? FhirString.fromJson({
              'value': json['instruction'],
              '_value': json['_instruction'],
            })
          : null,
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (temperatureQualifier != null) {
      json['temperatureQualifier'] = temperatureQualifier!.toJson();
    }

    if (temperatureRange != null) {
      json['temperatureRange'] = temperatureRange!.toJson();
    }

    if (maxDuration != null) {
      json['maxDuration'] = maxDuration!.toJson();
    }

    if (instruction != null) {
      addField('instruction', instruction);
    }

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
