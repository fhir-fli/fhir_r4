import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SpecimenDefinition]
/// A kind of specimen with associated set of requirements.
class SpecimenDefinition extends DomainResource {
  /// Primary constructor for [SpecimenDefinition]

  SpecimenDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.typeCollected,
    this.patientPreparation,
    this.timeAspect,
    this.collection,
    this.typeTested,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.SpecimenDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinition.fromJson(Map<String, dynamic> json) {
    return SpecimenDefinition(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
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
      timeAspect: json['timeAspect'] != null
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

  /// Deserialize [SpecimenDefinition] from a [String]
  /// or [YamlMap] object
  factory SpecimenDefinition.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SpecimenDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('SpecimenDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SpecimenDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinition.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (meta != null) {
      final primitiveJson = meta!.toJson();
      json['meta'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_meta'] = primitiveJson['_value'];
      }
    }

    if (implicitRules != null) {
      final primitiveJson = implicitRules!.toJson();
      json['implicitRules'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_implicitRules'] = primitiveJson['_value'];
      }
    }

    if (language != null) {
      final primitiveJson = language!.toJson();
      json['language'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_language'] = primitiveJson['_value'];
      }
    }

    if (text != null) {
      final primitiveJson = text!.toJson();
      json['text'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_text'] = primitiveJson['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final primitiveList = contained!.map((e) => e.toJson()).toList();
      json['contained'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_contained'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null) {
      final primitiveJson = identifier!.toJson();
      json['identifier'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_identifier'] = primitiveJson['_value'];
      }
    }

    if (typeCollected != null) {
      final primitiveJson = typeCollected!.toJson();
      json['typeCollected'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_typeCollected'] = primitiveJson['_value'];
      }
    }

    if (patientPreparation != null && patientPreparation!.isNotEmpty) {
      final primitiveList = patientPreparation!.map((e) => e.toJson()).toList();
      json['patientPreparation'] =
          primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_patientPreparation'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (timeAspect != null) {
      final primitiveJson = timeAspect!.toJson();
      json['timeAspect'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_timeAspect'] = primitiveJson['_value'];
      }
    }

    if (collection != null && collection!.isNotEmpty) {
      final primitiveList = collection!.map((e) => e.toJson()).toList();
      json['collection'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_collection'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (typeTested != null && typeTested!.isNotEmpty) {
      final primitiveList = typeTested!.map((e) => e.toJson()).toList();
      json['typeTested'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_typeTested'] = primitiveList.map((e) => e['_value']).toList();
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SpecimenDefinitionTypeTested]
/// Specimen conditioned in a container as expected by the testing
/// laboratory.
class SpecimenDefinitionTypeTested extends BackboneElement {
  /// Primary constructor for [SpecimenDefinitionTypeTested]

  SpecimenDefinitionTypeTested({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.isDerived,
    this.type,
    required this.preference,
    this.container,
    this.requirement,
    this.retentionTime,
    this.rejectionCriterion,
    this.handling,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionTypeTested.fromJson(Map<String, dynamic> json) {
    return SpecimenDefinitionTypeTested(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      isDerived: json['isDerived'] != null
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
      requirement: json['requirement'] != null
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

  /// Deserialize [SpecimenDefinitionTypeTested] from a [String]
  /// or [YamlMap] object
  factory SpecimenDefinitionTypeTested.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinitionTypeTested.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SpecimenDefinitionTypeTested.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SpecimenDefinitionTypeTested cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SpecimenDefinitionTypeTested]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionTypeTested.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (isDerived != null) {
      final primitiveJson = isDerived!.toJson();
      json['isDerived'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_isDerived'] = primitiveJson['_value'];
      }
    }

    if (type != null) {
      final primitiveJson = type!.toJson();
      json['type'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_type'] = primitiveJson['_value'];
      }
    }

    if (preference != null) {
      final primitiveJson = preference!.toJson();
      json['preference'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_preference'] = primitiveJson['_value'];
      }
    }

    if (container != null) {
      final primitiveJson = container!.toJson();
      json['container'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_container'] = primitiveJson['_value'];
      }
    }

    if (requirement != null) {
      final primitiveJson = requirement!.toJson();
      json['requirement'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_requirement'] = primitiveJson['_value'];
      }
    }

    if (retentionTime != null) {
      final primitiveJson = retentionTime!.toJson();
      json['retentionTime'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_retentionTime'] = primitiveJson['_value'];
      }
    }

    if (rejectionCriterion != null && rejectionCriterion!.isNotEmpty) {
      final primitiveList = rejectionCriterion!.map((e) => e.toJson()).toList();
      json['rejectionCriterion'] =
          primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_rejectionCriterion'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (handling != null && handling!.isNotEmpty) {
      final primitiveList = handling!.map((e) => e.toJson()).toList();
      json['handling'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_handling'] = primitiveList.map((e) => e['_value']).toList();
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SpecimenDefinitionContainer]
/// The specimen's container.
class SpecimenDefinitionContainer extends BackboneElement {
  /// Primary constructor for [SpecimenDefinitionContainer]

  SpecimenDefinitionContainer({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.material,
    this.type,
    this.cap,
    this.description,
    this.capacity,
    this.minimumVolumeQuantity,
    this.minimumVolumeString,
    this.additive,
    this.preparation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionContainer.fromJson(Map<String, dynamic> json) {
    return SpecimenDefinitionContainer(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      description: json['description'] != null
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
      minimumVolumeQuantity: json['minimumVolumeQuantity'] != null
          ? Quantity.fromJson(
              json['minimumVolumeQuantity'] as Map<String, dynamic>,
            )
          : null,
      minimumVolumeString: json['minimumVolumeString'] != null
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
      preparation: json['preparation'] != null
          ? FhirString.fromJson({
              'value': json['preparation'],
              '_value': json['_preparation'],
            })
          : null,
    );
  }

  /// Deserialize [SpecimenDefinitionContainer] from a [String]
  /// or [YamlMap] object
  factory SpecimenDefinitionContainer.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinitionContainer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SpecimenDefinitionContainer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SpecimenDefinitionContainer cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SpecimenDefinitionContainer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionContainer.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [minimumVolumeQuantity]
  /// The minimum volume to be conditioned in the container.
  final Quantity? minimumVolumeQuantity;

  /// [minimumVolumeString]
  /// The minimum volume to be conditioned in the container.
  final FhirString? minimumVolumeString;

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
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (material != null) {
      final primitiveJson = material!.toJson();
      json['material'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_material'] = primitiveJson['_value'];
      }
    }

    if (type != null) {
      final primitiveJson = type!.toJson();
      json['type'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_type'] = primitiveJson['_value'];
      }
    }

    if (cap != null) {
      final primitiveJson = cap!.toJson();
      json['cap'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_cap'] = primitiveJson['_value'];
      }
    }

    if (description != null) {
      final primitiveJson = description!.toJson();
      json['description'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_description'] = primitiveJson['_value'];
      }
    }

    if (capacity != null) {
      final primitiveJson = capacity!.toJson();
      json['capacity'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_capacity'] = primitiveJson['_value'];
      }
    }

    if (minimumVolumeQuantity != null) {
      final primitiveJson = minimumVolumeQuantity!.toJson();
      json['minimumVolumeQuantity'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_minimumVolumeQuantity'] = primitiveJson['_value'];
      }
    }

    if (minimumVolumeString != null) {
      final primitiveJson = minimumVolumeString!.toJson();
      json['minimumVolumeString'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_minimumVolumeString'] = primitiveJson['_value'];
      }
    }

    if (additive != null && additive!.isNotEmpty) {
      final primitiveList = additive!.map((e) => e.toJson()).toList();
      json['additive'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_additive'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (preparation != null) {
      final primitiveJson = preparation!.toJson();
      json['preparation'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_preparation'] = primitiveJson['_value'];
      }
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
    Quantity? minimumVolumeQuantity,
    FhirString? minimumVolumeString,
    List<SpecimenDefinitionAdditive>? additive,
    FhirString? preparation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      minimumVolumeQuantity:
          minimumVolumeQuantity ?? this.minimumVolumeQuantity,
      minimumVolumeString: minimumVolumeString ?? this.minimumVolumeString,
      additive: additive ?? this.additive,
      preparation: preparation ?? this.preparation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SpecimenDefinitionAdditive]
/// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
class SpecimenDefinitionAdditive extends BackboneElement {
  /// Primary constructor for [SpecimenDefinitionAdditive]

  SpecimenDefinitionAdditive({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.additiveCodeableConcept,
    this.additiveReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionAdditive.fromJson(Map<String, dynamic> json) {
    return SpecimenDefinitionAdditive(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      additiveCodeableConcept: json['additiveCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['additiveCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      additiveReference: json['additiveReference'] != null
          ? Reference.fromJson(
              json['additiveReference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [SpecimenDefinitionAdditive] from a [String]
  /// or [YamlMap] object
  factory SpecimenDefinitionAdditive.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinitionAdditive.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SpecimenDefinitionAdditive.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SpecimenDefinitionAdditive cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SpecimenDefinitionAdditive]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionAdditive.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [additiveCodeableConcept]
  /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  final CodeableConcept? additiveCodeableConcept;

  /// [additiveReference]
  /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  final Reference? additiveReference;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (additiveCodeableConcept != null) {
      final primitiveJson = additiveCodeableConcept!.toJson();
      json['additiveCodeableConcept'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_additiveCodeableConcept'] = primitiveJson['_value'];
      }
    }

    if (additiveReference != null) {
      final primitiveJson = additiveReference!.toJson();
      json['additiveReference'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_additiveReference'] = primitiveJson['_value'];
      }
    }

    return json;
  }

  @override
  SpecimenDefinitionAdditive clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionAdditive copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? additiveCodeableConcept,
    Reference? additiveReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SpecimenDefinitionAdditive(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      additiveCodeableConcept:
          additiveCodeableConcept ?? this.additiveCodeableConcept,
      additiveReference: additiveReference ?? this.additiveReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SpecimenDefinitionHandling]
/// Set of instructions for preservation/transport of the specimen at a
/// defined temperature interval, prior the testing process.
class SpecimenDefinitionHandling extends BackboneElement {
  /// Primary constructor for [SpecimenDefinitionHandling]

  SpecimenDefinitionHandling({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
    this.maxDuration,
    this.instruction,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionHandling.fromJson(Map<String, dynamic> json) {
    return SpecimenDefinitionHandling(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      instruction: json['instruction'] != null
          ? FhirString.fromJson({
              'value': json['instruction'],
              '_value': json['_instruction'],
            })
          : null,
    );
  }

  /// Deserialize [SpecimenDefinitionHandling] from a [String]
  /// or [YamlMap] object
  factory SpecimenDefinitionHandling.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinitionHandling.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? SpecimenDefinitionHandling.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'SpecimenDefinitionHandling cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [SpecimenDefinitionHandling]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionHandling.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (temperatureQualifier != null) {
      final primitiveJson = temperatureQualifier!.toJson();
      json['temperatureQualifier'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_temperatureQualifier'] = primitiveJson['_value'];
      }
    }

    if (temperatureRange != null) {
      final primitiveJson = temperatureRange!.toJson();
      json['temperatureRange'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_temperatureRange'] = primitiveJson['_value'];
      }
    }

    if (maxDuration != null) {
      final primitiveJson = maxDuration!.toJson();
      json['maxDuration'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_maxDuration'] = primitiveJson['_value'];
      }
    }

    if (instruction != null) {
      final primitiveJson = instruction!.toJson();
      json['instruction'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_instruction'] = primitiveJson['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SpecimenDefinitionHandling(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      temperatureQualifier: temperatureQualifier ?? this.temperatureQualifier,
      temperatureRange: temperatureRange ?? this.temperatureRange,
      maxDuration: maxDuration ?? this.maxDuration,
      instruction: instruction ?? this.instruction,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
