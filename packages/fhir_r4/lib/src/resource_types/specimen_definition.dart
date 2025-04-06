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
          objectPath: 'SpecimenDefinition',
          resourceType: R4ResourceType.SpecimenDefinition,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SpecimenDefinition.empty() => const SpecimenDefinition();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition';
    return SpecimenDefinition(
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
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
      ),
      typeCollected: JsonParser.parseObject<CodeableConcept>(
        json,
        'typeCollected',
        CodeableConcept.fromJson,
        '$objectPath.typeCollected',
      ),
      patientPreparation: (json['patientPreparation'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.patientPreparation',
              },
            ),
          )
          .toList(),
      timeAspect: JsonParser.parsePrimitive<FhirString>(
        json,
        'timeAspect',
        FhirString.fromJson,
        '$objectPath.timeAspect',
      ),
      collection: (json['collection'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.collection',
              },
            ),
          )
          .toList(),
      typeTested: (json['typeTested'] as List<dynamic>?)
          ?.map<SpecimenDefinitionTypeTested>(
            (v) => SpecimenDefinitionTypeTested.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.typeTested',
              },
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [
              ...?contained,
              child,
            ];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is Identifier) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'typeCollected':
        {
          if (child is CodeableConcept) {
            return copyWith(typeCollected: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patientPreparation':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?patientPreparation, ...child];
            return copyWith(patientPreparation: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?patientPreparation,
              child,
            ];
            return copyWith(patientPreparation: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timeAspect':
        {
          if (child is FhirString) {
            return copyWith(timeAspect: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'collection':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?collection, ...child];
            return copyWith(collection: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?collection,
              child,
            ];
            return copyWith(collection: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'typeTested':
        {
          if (child is List<SpecimenDefinitionTypeTested>) {
            // Add all elements from passed list
            final newList = [...?typeTested, ...child];
            return copyWith(typeTested: newList);
          } else if (child is SpecimenDefinitionTypeTested) {
            // Add single element to existing list or create new list
            final newList = [
              ...?typeTested,
              child,
            ];
            return copyWith(typeTested: newList);
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
      case 'identifier':
        return ['Identifier'];
      case 'typeCollected':
        return ['CodeableConcept'];
      case 'patientPreparation':
        return ['CodeableConcept'];
      case 'timeAspect':
        return ['FhirString'];
      case 'collection':
        return ['CodeableConcept'];
      case 'typeTested':
        return ['SpecimenDefinitionTypeTested'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  SpecimenDefinition createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: Identifier.empty(),
          );
        }
      case 'typeCollected':
        {
          return copyWith(
            typeCollected: CodeableConcept.empty(),
          );
        }
      case 'patientPreparation':
        {
          return copyWith(
            patientPreparation: <CodeableConcept>[],
          );
        }
      case 'timeAspect':
        {
          return copyWith(
            timeAspect: FhirString.empty(),
          );
        }
      case 'collection':
        {
          return copyWith(
            collection: <CodeableConcept>[],
          );
        }
      case 'typeTested':
        {
          return copyWith(
            typeTested: <SpecimenDefinitionTypeTested>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  SpecimenDefinition clear({
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
    return SpecimenDefinition(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      typeCollected: typeCollected ? null : this.typeCollected,
      patientPreparation: patientPreparation ? null : this.patientPreparation,
      timeAspect: timeAspect ? null : this.timeAspect,
      collection: collection ? null : this.collection,
      typeTested: typeTested ? null : this.typeTested,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return SpecimenDefinition(
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
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
      typeCollected: typeCollected?.copyWith(
            objectPath: '$newObjectPath.typeCollected',
          ) ??
          this.typeCollected,
      patientPreparation: patientPreparation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.patientPreparation',
                ),
              )
              .toList() ??
          this.patientPreparation,
      timeAspect: timeAspect?.copyWith(
            objectPath: '$newObjectPath.timeAspect',
          ) ??
          this.timeAspect,
      collection: collection
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.collection',
                ),
              )
              .toList() ??
          this.collection,
      typeTested: typeTested
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.typeTested',
                ),
              )
              .toList() ??
          this.typeTested,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinition) {
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<CodeableConcept>(
      collection,
      o.collection,
    )) {
      return false;
    }
    if (!listEquals<SpecimenDefinitionTypeTested>(
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
  }) : super(
          objectPath: 'SpecimenDefinition.typeTested',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SpecimenDefinitionTypeTested.empty() => SpecimenDefinitionTypeTested(
        preference: SpecimenContainedPreference.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionTypeTested.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition.typeTested';
    return SpecimenDefinitionTypeTested(
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
      isDerived: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isDerived',
        FhirBoolean.fromJson,
        '$objectPath.isDerived',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      preference: JsonParser.parsePrimitive<SpecimenContainedPreference>(
        json,
        'preference',
        SpecimenContainedPreference.fromJson,
        '$objectPath.preference',
      )!,
      container: JsonParser.parseObject<SpecimenDefinitionContainer>(
        json,
        'container',
        SpecimenDefinitionContainer.fromJson,
        '$objectPath.container',
      ),
      requirement: JsonParser.parsePrimitive<FhirString>(
        json,
        'requirement',
        FhirString.fromJson,
        '$objectPath.requirement',
      ),
      retentionTime: JsonParser.parseObject<FhirDuration>(
        json,
        'retentionTime',
        FhirDuration.fromJson,
        '$objectPath.retentionTime',
      ),
      rejectionCriterion: (json['rejectionCriterion'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.rejectionCriterion',
              },
            ),
          )
          .toList(),
      handling: (json['handling'] as List<dynamic>?)
          ?.map<SpecimenDefinitionHandling>(
            (v) => SpecimenDefinitionHandling.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.handling',
              },
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'isDerived':
        {
          if (child is FhirBoolean) {
            return copyWith(isDerived: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'preference':
        {
          if (child is SpecimenContainedPreference) {
            return copyWith(preference: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'container':
        {
          if (child is SpecimenDefinitionContainer) {
            return copyWith(container: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requirement':
        {
          if (child is FhirString) {
            return copyWith(requirement: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'retentionTime':
        {
          if (child is FhirDuration) {
            return copyWith(retentionTime: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rejectionCriterion':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?rejectionCriterion, ...child];
            return copyWith(rejectionCriterion: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?rejectionCriterion,
              child,
            ];
            return copyWith(rejectionCriterion: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'handling':
        {
          if (child is List<SpecimenDefinitionHandling>) {
            // Add all elements from passed list
            final newList = [...?handling, ...child];
            return copyWith(handling: newList);
          } else if (child is SpecimenDefinitionHandling) {
            // Add single element to existing list or create new list
            final newList = [
              ...?handling,
              child,
            ];
            return copyWith(handling: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'isDerived':
        return ['FhirBoolean'];
      case 'type':
        return ['CodeableConcept'];
      case 'preference':
        return ['FhirCode'];
      case 'container':
        return ['SpecimenDefinitionContainer'];
      case 'requirement':
        return ['FhirString'];
      case 'retentionTime':
        return ['FhirDuration'];
      case 'rejectionCriterion':
        return ['CodeableConcept'];
      case 'handling':
        return ['SpecimenDefinitionHandling'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinitionTypeTested]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  SpecimenDefinitionTypeTested createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'isDerived':
        {
          return copyWith(
            isDerived: FhirBoolean.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'preference':
        {
          return copyWith(
            preference: SpecimenContainedPreference.empty(),
          );
        }
      case 'container':
        {
          return copyWith(
            container: SpecimenDefinitionContainer.empty(),
          );
        }
      case 'requirement':
        {
          return copyWith(
            requirement: FhirString.empty(),
          );
        }
      case 'retentionTime':
        {
          return copyWith(
            retentionTime: FhirDuration.empty(),
          );
        }
      case 'rejectionCriterion':
        {
          return copyWith(
            rejectionCriterion: <CodeableConcept>[],
          );
        }
      case 'handling':
        {
          return copyWith(
            handling: <SpecimenDefinitionHandling>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  SpecimenDefinitionTypeTested clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool isDerived = false,
    bool type = false,
    bool container = false,
    bool requirement = false,
    bool retentionTime = false,
    bool rejectionCriterion = false,
    bool handling = false,
  }) {
    return SpecimenDefinitionTypeTested(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      isDerived: isDerived ? null : this.isDerived,
      type: type ? null : this.type,
      preference: preference,
      container: container ? null : this.container,
      requirement: requirement ? null : this.requirement,
      retentionTime: retentionTime ? null : this.retentionTime,
      rejectionCriterion: rejectionCriterion ? null : this.rejectionCriterion,
      handling: handling ? null : this.handling,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SpecimenDefinitionTypeTested(
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
      isDerived: isDerived?.copyWith(
            objectPath: '$newObjectPath.isDerived',
          ) ??
          this.isDerived,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      preference: preference?.copyWith(
            objectPath: '$newObjectPath.preference',
          ) ??
          this.preference,
      container: container?.copyWith(
            objectPath: '$newObjectPath.container',
          ) ??
          this.container,
      requirement: requirement?.copyWith(
            objectPath: '$newObjectPath.requirement',
          ) ??
          this.requirement,
      retentionTime: retentionTime?.copyWith(
            objectPath: '$newObjectPath.retentionTime',
          ) ??
          this.retentionTime,
      rejectionCriterion: rejectionCriterion
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.rejectionCriterion',
                ),
              )
              .toList() ??
          this.rejectionCriterion,
      handling: handling
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.handling',
                ),
              )
              .toList() ??
          this.handling,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinitionTypeTested) {
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
    if (!listEquals<CodeableConcept>(
      rejectionCriterion,
      o.rejectionCriterion,
    )) {
      return false;
    }
    if (!listEquals<SpecimenDefinitionHandling>(
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
    this.minimumVolumeX,
    this.additive,
    this.preparation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SpecimenDefinition.typeTested.container',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SpecimenDefinitionContainer.empty() =>
      const SpecimenDefinitionContainer();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionContainer.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition.typeTested.container';
    return SpecimenDefinitionContainer(
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
      material: JsonParser.parseObject<CodeableConcept>(
        json,
        'material',
        CodeableConcept.fromJson,
        '$objectPath.material',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      cap: JsonParser.parseObject<CodeableConcept>(
        json,
        'cap',
        CodeableConcept.fromJson,
        '$objectPath.cap',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      capacity: JsonParser.parseObject<Quantity>(
        json,
        'capacity',
        Quantity.fromJson,
        '$objectPath.capacity',
      ),
      minimumVolumeX: JsonParser.parsePolymorphic<
          MinimumVolumeXSpecimenDefinitionContainer>(
        json,
        {
          'minimumVolumeQuantity': Quantity.fromJson,
          'minimumVolumeString': FhirString.fromJson,
        },
        objectPath,
      ),
      additive: (json['additive'] as List<dynamic>?)
          ?.map<SpecimenDefinitionAdditive>(
            (v) => SpecimenDefinitionAdditive.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.additive',
              },
            ),
          )
          .toList(),
      preparation: JsonParser.parsePrimitive<FhirString>(
        json,
        'preparation',
        FhirString.fromJson,
        '$objectPath.preparation',
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'material':
        {
          if (child is CodeableConcept) {
            return copyWith(material: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'cap':
        {
          if (child is CodeableConcept) {
            return copyWith(cap: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'capacity':
        {
          if (child is Quantity) {
            return copyWith(capacity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minimumVolume':
      case 'minimumVolumeX':
        {
          if (child is MinimumVolumeXSpecimenDefinitionContainer) {
            return copyWith(minimumVolumeX: child);
          } else {
            if (child is Quantity) {
              return copyWith(minimumVolumeX: child);
            }
            if (child is FhirString) {
              return copyWith(minimumVolumeX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'minimumVolumeQuantity':
        {
          if (child is Quantity) {
            return copyWith(minimumVolumeX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minimumVolumeFhirString':
        {
          if (child is FhirString) {
            return copyWith(minimumVolumeX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'additive':
        {
          if (child is List<SpecimenDefinitionAdditive>) {
            // Add all elements from passed list
            final newList = [...?additive, ...child];
            return copyWith(additive: newList);
          } else if (child is SpecimenDefinitionAdditive) {
            // Add single element to existing list or create new list
            final newList = [
              ...?additive,
              child,
            ];
            return copyWith(additive: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'preparation':
        {
          if (child is FhirString) {
            return copyWith(preparation: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'material':
        return ['CodeableConcept'];
      case 'type':
        return ['CodeableConcept'];
      case 'cap':
        return ['CodeableConcept'];
      case 'description':
        return ['FhirString'];
      case 'capacity':
        return ['Quantity'];
      case 'minimumVolume':
      case 'minimumVolumeX':
        return [
          'Quantity',
          'FhirString',
        ];
      case 'minimumVolumeQuantity':
        return ['Quantity'];
      case 'minimumVolumeString':
        return ['FhirString'];
      case 'additive':
        return ['SpecimenDefinitionAdditive'];
      case 'preparation':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinitionContainer]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  SpecimenDefinitionContainer createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'material':
        {
          return copyWith(
            material: CodeableConcept.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'cap':
        {
          return copyWith(
            cap: CodeableConcept.empty(),
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'capacity':
        {
          return copyWith(
            capacity: Quantity.empty(),
          );
        }
      case 'minimumVolume':
      case 'minimumVolumeX':
      case 'minimumVolumeQuantity':
        {
          return copyWith(
            minimumVolumeX: Quantity.empty(),
          );
        }
      case 'minimumVolumeString':
        {
          return copyWith(
            minimumVolumeX: FhirString.empty(),
          );
        }
      case 'additive':
        {
          return copyWith(
            additive: <SpecimenDefinitionAdditive>[],
          );
        }
      case 'preparation':
        {
          return copyWith(
            preparation: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  SpecimenDefinitionContainer clear({
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
    return SpecimenDefinitionContainer(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      material: material ? null : this.material,
      type: type ? null : this.type,
      cap: cap ? null : this.cap,
      description: description ? null : this.description,
      capacity: capacity ? null : this.capacity,
      minimumVolumeX: minimumVolume ? null : minimumVolumeX,
      additive: additive ? null : this.additive,
      preparation: preparation ? null : this.preparation,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SpecimenDefinitionContainer(
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
      material: material?.copyWith(
            objectPath: '$newObjectPath.material',
          ) ??
          this.material,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      cap: cap?.copyWith(
            objectPath: '$newObjectPath.cap',
          ) ??
          this.cap,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      capacity: capacity?.copyWith(
            objectPath: '$newObjectPath.capacity',
          ) ??
          this.capacity,
      minimumVolumeX: minimumVolumeX?.copyWith(
            objectPath: '$newObjectPath.minimumVolumeX',
          ) as MinimumVolumeXSpecimenDefinitionContainer? ??
          this.minimumVolumeX,
      additive: additive
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.additive',
                ),
              )
              .toList() ??
          this.additive,
      preparation: preparation?.copyWith(
            objectPath: '$newObjectPath.preparation',
          ) ??
          this.preparation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinitionContainer) {
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
    if (!listEquals<SpecimenDefinitionAdditive>(
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
  }) : super(
          objectPath: 'SpecimenDefinition.typeTested.container.additive',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SpecimenDefinitionAdditive.empty() => SpecimenDefinitionAdditive(
        additiveX: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionAdditive.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition.typeTested.container.additive';
    return SpecimenDefinitionAdditive(
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
      additiveX:
          JsonParser.parsePolymorphic<AdditiveXSpecimenDefinitionAdditive>(
        json,
        {
          'additiveCodeableConcept': CodeableConcept.fromJson,
          'additiveReference': Reference.fromJson,
        },
        objectPath,
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'additive':
      case 'additiveX':
        {
          if (child is AdditiveXSpecimenDefinitionAdditive) {
            return copyWith(additiveX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(additiveX: child);
            }
            if (child is Reference) {
              return copyWith(additiveX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'additiveCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(additiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'additiveReference':
        {
          if (child is Reference) {
            return copyWith(additiveX: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'additive':
      case 'additiveX':
        return [
          'CodeableConcept',
          'Reference',
        ];
      case 'additiveCodeableConcept':
        return ['CodeableConcept'];
      case 'additiveReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinitionAdditive]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  SpecimenDefinitionAdditive createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'additive':
      case 'additiveX':
      case 'additiveCodeableConcept':
        {
          return copyWith(
            additiveX: CodeableConcept.empty(),
          );
        }
      case 'additiveReference':
        {
          return copyWith(
            additiveX: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  SpecimenDefinitionAdditive clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return SpecimenDefinitionAdditive(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      additiveX: additiveX,
    );
  }

  @override
  SpecimenDefinitionAdditive clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionAdditive copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    AdditiveXSpecimenDefinitionAdditive? additiveX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SpecimenDefinitionAdditive(
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
      additiveX: additiveX?.copyWith(
            objectPath: '$newObjectPath.additiveX',
          ) as AdditiveXSpecimenDefinitionAdditive? ??
          this.additiveX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinitionAdditive) {
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
    if (!equalsDeepWithNull(
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
  }) : super(
          objectPath: 'SpecimenDefinition.typeTested.handling',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SpecimenDefinitionHandling.empty() =>
      const SpecimenDefinitionHandling();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionHandling.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition.typeTested.handling';
    return SpecimenDefinitionHandling(
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
      temperatureQualifier: JsonParser.parseObject<CodeableConcept>(
        json,
        'temperatureQualifier',
        CodeableConcept.fromJson,
        '$objectPath.temperatureQualifier',
      ),
      temperatureRange: JsonParser.parseObject<Range>(
        json,
        'temperatureRange',
        Range.fromJson,
        '$objectPath.temperatureRange',
      ),
      maxDuration: JsonParser.parseObject<FhirDuration>(
        json,
        'maxDuration',
        FhirDuration.fromJson,
        '$objectPath.maxDuration',
      ),
      instruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'instruction',
        FhirString.fromJson,
        '$objectPath.instruction',
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'temperatureQualifier':
        {
          if (child is CodeableConcept) {
            return copyWith(temperatureQualifier: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'temperatureRange':
        {
          if (child is Range) {
            return copyWith(temperatureRange: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxDuration':
        {
          if (child is FhirDuration) {
            return copyWith(maxDuration: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'instruction':
        {
          if (child is FhirString) {
            return copyWith(instruction: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'temperatureQualifier':
        return ['CodeableConcept'];
      case 'temperatureRange':
        return ['Range'];
      case 'maxDuration':
        return ['FhirDuration'];
      case 'instruction':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinitionHandling]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  SpecimenDefinitionHandling createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'temperatureQualifier':
        {
          return copyWith(
            temperatureQualifier: CodeableConcept.empty(),
          );
        }
      case 'temperatureRange':
        {
          return copyWith(
            temperatureRange: Range.empty(),
          );
        }
      case 'maxDuration':
        {
          return copyWith(
            maxDuration: FhirDuration.empty(),
          );
        }
      case 'instruction':
        {
          return copyWith(
            instruction: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  SpecimenDefinitionHandling clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool temperatureQualifier = false,
    bool temperatureRange = false,
    bool maxDuration = false,
    bool instruction = false,
  }) {
    return SpecimenDefinitionHandling(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      temperatureQualifier:
          temperatureQualifier ? null : this.temperatureQualifier,
      temperatureRange: temperatureRange ? null : this.temperatureRange,
      maxDuration: maxDuration ? null : this.maxDuration,
      instruction: instruction ? null : this.instruction,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SpecimenDefinitionHandling(
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
      temperatureQualifier: temperatureQualifier?.copyWith(
            objectPath: '$newObjectPath.temperatureQualifier',
          ) ??
          this.temperatureQualifier,
      temperatureRange: temperatureRange?.copyWith(
            objectPath: '$newObjectPath.temperatureRange',
          ) ??
          this.temperatureRange,
      maxDuration: maxDuration?.copyWith(
            objectPath: '$newObjectPath.maxDuration',
          ) ??
          this.maxDuration,
      instruction: instruction?.copyWith(
            objectPath: '$newObjectPath.instruction',
          ) ??
          this.instruction,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinitionHandling) {
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
