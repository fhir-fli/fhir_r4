import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'specimen_definition.g.dart';

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      typeTested: (json['typeTested'] as List<dynamic>?)
          ?.map<SpecimenDefinitionTypeTested>(
            (v) => SpecimenDefinitionTypeTested.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return SpecimenDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'typeCollected',
      typeCollected,
    );
    addField(
      'patientPreparation',
      patientPreparation,
    );
    addField(
      'timeAspect',
      timeAspect,
    );
    addField(
      'collection',
      collection,
    );
    addField(
      'typeTested',
      typeTested,
    );
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  SpecimenDefinition clone() => copyWith();

  /// Copy function for [SpecimenDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SpecimenDefinitionCopyWith<SpecimenDefinition> get copyWith =>
      _$SpecimenDefinitionCopyWithImpl<SpecimenDefinition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      typeCollected,
      o.typeCollected,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      patientPreparation,
      o.patientPreparation,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      timeAspect,
      o.timeAspect,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      collection,
      o.collection,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<SpecimenDefinitionTypeTested>(
      typeTested,
      o.typeTested,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      handling: (json['handling'] as List<dynamic>?)
          ?.map<SpecimenDefinitionHandling>(
            (v) => SpecimenDefinitionHandling.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionTypeTested.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'isDerived',
      isDerived,
    );
    addField(
      'type',
      type,
    );
    addField(
      'preference',
      preference,
    );
    addField(
      'container',
      container,
    );
    addField(
      'requirement',
      requirement,
    );
    addField(
      'retentionTime',
      retentionTime,
    );
    addField(
      'rejectionCriterion',
      rejectionCriterion,
    );
    addField(
      'handling',
      handling,
    );
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
      case 'isDerived':
        if (isDerived != null) {
          fields.add(isDerived!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'preference':
        fields.add(preference);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  SpecimenDefinitionTypeTested clone() => copyWith();

  /// Copy function for [SpecimenDefinitionTypeTested]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SpecimenDefinitionTypeTestedCopyWith<SpecimenDefinitionTypeTested>
      get copyWith => _$SpecimenDefinitionTypeTestedCopyWithImpl<
              SpecimenDefinitionTypeTested>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinitionTypeTested) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      isDerived,
      o.isDerived,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      preference,
      o.preference,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      container,
      o.container,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      requirement,
      o.requirement,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      retentionTime,
      o.retentionTime,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      rejectionCriterion,
      o.rejectionCriterion,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<SpecimenDefinitionHandling>(
      handling,
      o.handling,
    )) {
      return false;
    }
    return true;
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
    MinimumVolumeXSpecimenDefinitionContainer? minimumVolumeX,
    Quantity? minimumVolumeQuantity,
    FhirString? minimumVolumeString,
    this.additive,
    this.preparation,
    super.disallowExtensions,
  })  : minimumVolumeX =
            minimumVolumeX ?? minimumVolumeQuantity ?? minimumVolumeString,
        super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
          MinimumVolumeXSpecimenDefinitionContainer>(
        json,
        {
          'minimumVolumeQuantity': Quantity.fromJson,
          'minimumVolumeString': FhirString.fromJson,
        },
      ),
      additive: (json['additive'] as List<dynamic>?)
          ?.map<SpecimenDefinitionAdditive>(
            (v) => SpecimenDefinitionAdditive.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionContainer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [minimumVolumeQuantity] as a Quantity
  Quantity? get minimumVolumeQuantity => minimumVolumeX?.isAs<Quantity>();

  /// Getter for [minimumVolumeString] as a FhirString
  FhirString? get minimumVolumeString => minimumVolumeX?.isAs<FhirString>();

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'material',
      material,
    );
    addField(
      'type',
      type,
    );
    addField(
      'cap',
      cap,
    );
    addField(
      'description',
      description,
    );
    addField(
      'capacity',
      capacity,
    );
    if (minimumVolumeX != null) {
      final fhirType = minimumVolumeX!.fhirType;
      addField(
        'minimumVolume${fhirType.capitalize()}',
        minimumVolumeX,
      );
    }

    addField(
      'additive',
      additive,
    );
    addField(
      'preparation',
      preparation,
    );
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
        fields.add(minimumVolumeX!);
      case 'minimumVolumeX':
        fields.add(minimumVolumeX!);
      case 'minimumVolumeQuantity':
        if (minimumVolumeX is Quantity) {
          fields.add(minimumVolumeX!);
        }
      case 'minimumVolumeString':
        if (minimumVolumeX is FhirString) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  SpecimenDefinitionContainer clone() => copyWith();

  /// Copy function for [SpecimenDefinitionContainer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SpecimenDefinitionContainerCopyWith<SpecimenDefinitionContainer>
      get copyWith => _$SpecimenDefinitionContainerCopyWithImpl<
              SpecimenDefinitionContainer>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinitionContainer) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      material,
      o.material,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      cap,
      o.cap,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      capacity,
      o.capacity,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      minimumVolumeX,
      o.minimumVolumeX,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<SpecimenDefinitionAdditive>(
      additive,
      o.additive,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      preparation,
      o.preparation,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      additiveX:
          JsonParser.parsePolymorphic<AdditiveXSpecimenDefinitionAdditive>(
        json,
        {
          'additiveCodeableConcept': CodeableConcept.fromJson,
          'additiveReference': Reference.fromJson,
        },
      )!,
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
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionAdditive.fromJson(json);
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
  final AdditiveXSpecimenDefinitionAdditive additiveX;

  /// Getter for [additiveCodeableConcept] as a CodeableConcept
  CodeableConcept? get additiveCodeableConcept =>
      additiveX.isAs<CodeableConcept>();

  /// Getter for [additiveReference] as a Reference
  Reference? get additiveReference => additiveX.isAs<Reference>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    final additiveXFhirType = additiveX.fhirType;
    addField(
      'additive${additiveXFhirType.capitalize()}',
      additiveX,
    );

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
      case 'additive':
        fields.add(additiveX);
      case 'additiveX':
        fields.add(additiveX);
      case 'additiveCodeableConcept':
        if (additiveX is CodeableConcept) {
          fields.add(additiveX);
        }
      case 'additiveReference':
        if (additiveX is Reference) {
          fields.add(additiveX);
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
  SpecimenDefinitionAdditive clone() => copyWith();

  /// Copy function for [SpecimenDefinitionAdditive]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SpecimenDefinitionAdditiveCopyWith<SpecimenDefinitionAdditive>
      get copyWith =>
          _$SpecimenDefinitionAdditiveCopyWithImpl<SpecimenDefinitionAdditive>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinitionAdditive) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      additiveX,
      o.additiveX,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionHandling.fromJson(json);
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'temperatureQualifier',
      temperatureQualifier,
    );
    addField(
      'temperatureRange',
      temperatureRange,
    );
    addField(
      'maxDuration',
      maxDuration,
    );
    addField(
      'instruction',
      instruction,
    );
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  SpecimenDefinitionHandling clone() => copyWith();

  /// Copy function for [SpecimenDefinitionHandling]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SpecimenDefinitionHandlingCopyWith<SpecimenDefinitionHandling>
      get copyWith =>
          _$SpecimenDefinitionHandlingCopyWithImpl<SpecimenDefinitionHandling>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinitionHandling) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      temperatureQualifier,
      o.temperatureQualifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      temperatureRange,
      o.temperatureRange,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      maxDuration,
      o.maxDuration,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      instruction,
      o.instruction,
    )) {
      return false;
    }
    return true;
  }
}
