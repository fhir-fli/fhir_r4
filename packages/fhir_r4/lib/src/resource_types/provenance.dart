import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Provenance]
/// Provenance of a resource is a record that describes entities and
/// processes involved in producing and delivering or otherwise influencing
/// that resource. Provenance provides a critical foundation for assessing
/// authenticity, enabling trust, and allowing reproducibility. Provenance
/// assertions are a form of contextual metadata and can themselves become
/// important records with their own provenance. Provenance statement
/// indicates clinical significance in terms of confidence in authenticity,
/// reliability, and trustworthiness, integrity, and stage in lifecycle
/// (e.g. Document Completion - has the artifact been legally
/// authenticated), all of which may impact security, privacy, and trust
/// policies.
class Provenance extends DomainResource {
  /// Primary constructor for
  /// [Provenance]

  const Provenance({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.target,
    this.occurredX,
    required this.recorded,
    this.policy,
    this.location,
    this.reason,
    this.activity,
    required this.agent,
    this.entity,
    this.signature,
  }) : super(
          objectPath: 'Provenance',
          resourceType: R4ResourceType.Provenance,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Provenance.empty() => Provenance(
        target: <Reference>[],
        recorded: FhirInstant.empty(),
        agent: <ProvenanceAgent>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Provenance.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Provenance';
    return Provenance(
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
      target: (json['target'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.target',
              },
            ),
          )
          .toList(),
      occurredX: JsonParser.parsePolymorphic<OccurredXProvenance>(
        json,
        {
          'occurredPeriod': Period.fromJson,
          'occurredDateTime': FhirDateTime.fromJson,
        },
        objectPath,
      ),
      recorded: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'recorded',
        FhirInstant.fromJson,
        '$objectPath.recorded',
      )!,
      policy: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'policy',
        FhirUri.fromJson,
        '$objectPath.policy',
      ),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
        '$objectPath.location',
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
              },
            ),
          )
          .toList(),
      activity: JsonParser.parseObject<CodeableConcept>(
        json,
        'activity',
        CodeableConcept.fromJson,
        '$objectPath.activity',
      ),
      agent: (json['agent'] as List<dynamic>)
          .map<ProvenanceAgent>(
            (v) => ProvenanceAgent.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.agent',
              },
            ),
          )
          .toList(),
      entity: (json['entity'] as List<dynamic>?)
          ?.map<ProvenanceEntity>(
            (v) => ProvenanceEntity.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.entity',
              },
            ),
          )
          .toList(),
      signature: (json['signature'] as List<dynamic>?)
          ?.map<Signature>(
            (v) => Signature.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.signature',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Provenance]
  /// from a [String] or [YamlMap] object
  factory Provenance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Provenance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Provenance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Provenance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Provenance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Provenance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Provenance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Provenance';

  /// [target]
  /// The Reference(s) that were generated or updated by the activity
  /// described in this resource. A provenance can point to more than one
  /// target if multiple resources were created/updated by the same activity.
  final List<Reference> target;

  /// [occurredX]
  /// The period during which the activity occurred.
  final OccurredXProvenance? occurredX;

  /// Getter for [occurredPeriod] as a Period
  Period? get occurredPeriod => occurredX?.isAs<Period>();

  /// Getter for [occurredDateTime] as a FhirDateTime
  FhirDateTime? get occurredDateTime => occurredX?.isAs<FhirDateTime>();

  /// [recorded]
  /// The instant of time at which the activity was recorded.
  final FhirInstant recorded;

  /// [policy]
  /// Policy or plan the activity was defined by. Typically, a single
  /// activity may have multiple applicable policy documents, such as patient
  /// consent, guarantor funding, etc.
  final List<FhirUri>? policy;

  /// [location]
  /// Where the activity occurred, if relevant.
  final Reference? location;

  /// [reason]
  /// The reason that the activity was taking place.
  final List<CodeableConcept>? reason;

  /// [activity]
  /// An activity is something that occurs over a period of time and acts
  /// upon or with entities; it may include consuming, processing,
  /// transforming, modifying, relocating, using, or generating entities.
  final CodeableConcept? activity;

  /// [agent]
  /// An actor taking a role in an activity for which it can be assigned some
  /// degree of responsibility for the activity taking place.
  final List<ProvenanceAgent> agent;

  /// [entity]
  /// An entity used in this activity.
  final List<ProvenanceEntity>? entity;

  /// [signature]
  /// A digital signature on the target Reference(s). The signer should match
  /// a Provenance.agent. The purpose of the signature is indicated.
  final List<Signature>? signature;
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
      'target',
      target,
    );
    if (occurredX != null) {
      final fhirType = occurredX!.fhirType;
      addField(
        'occurred${fhirType.capitalize()}',
        occurredX,
      );
    }

    addField(
      'recorded',
      recorded,
    );
    addField(
      'policy',
      policy,
    );
    addField(
      'location',
      location,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'activity',
      activity,
    );
    addField(
      'agent',
      agent,
    );
    addField(
      'entity',
      entity,
    );
    addField(
      'signature',
      signature,
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
      'target',
      'occurredX',
      'recorded',
      'policy',
      'location',
      'reason',
      'activity',
      'agent',
      'entity',
      'signature',
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
      case 'target':
        fields.addAll(target);
      case 'occurred':
        fields.add(occurredX!);
      case 'occurredX':
        fields.add(occurredX!);
      case 'occurredPeriod':
        if (occurredX is Period) {
          fields.add(occurredX!);
        }
      case 'occurredDateTime':
        if (occurredX is FhirDateTime) {
          fields.add(occurredX!);
        }
      case 'recorded':
        fields.add(recorded);
      case 'policy':
        if (policy != null) {
          fields.addAll(policy!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'activity':
        if (activity != null) {
          fields.add(activity!);
        }
      case 'agent':
        fields.addAll(agent);
      case 'entity':
        if (entity != null) {
          fields.addAll(entity!);
        }
      case 'signature':
        if (signature != null) {
          fields.addAll(signature!);
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
      case 'target':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...target, ...child];
            return copyWith(target: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...target,
              child,
            ];
            return copyWith(target: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurred':
      case 'occurredX':
        {
          if (child is OccurredXProvenance) {
            return copyWith(occurredX: child);
          } else {
            if (child is Period) {
              return copyWith(occurredX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(occurredX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurredPeriod':
        {
          if (child is Period) {
            return copyWith(occurredX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurredFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(occurredX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recorded':
        {
          if (child is FhirInstant) {
            return copyWith(recorded: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'policy':
        {
          if (child is List<FhirUri>) {
            // Add all elements from passed list
            final newList = [...?policy, ...child];
            return copyWith(policy: newList);
          } else if (child is FhirUri) {
            // Add single element to existing list or create new list
            final newList = [
              ...?policy,
              child,
            ];
            return copyWith(policy: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'location':
        {
          if (child is Reference) {
            return copyWith(location: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reason':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?reason, ...child];
            return copyWith(reason: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?reason,
              child,
            ];
            return copyWith(reason: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'activity':
        {
          if (child is CodeableConcept) {
            return copyWith(activity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'agent':
        {
          if (child is List<ProvenanceAgent>) {
            // Add all elements from passed list
            final newList = [...agent, ...child];
            return copyWith(agent: newList);
          } else if (child is ProvenanceAgent) {
            // Add single element to existing list or create new list
            final newList = [
              ...agent,
              child,
            ];
            return copyWith(agent: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'entity':
        {
          if (child is List<ProvenanceEntity>) {
            // Add all elements from passed list
            final newList = [...?entity, ...child];
            return copyWith(entity: newList);
          } else if (child is ProvenanceEntity) {
            // Add single element to existing list or create new list
            final newList = [
              ...?entity,
              child,
            ];
            return copyWith(entity: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'signature':
        {
          if (child is List<Signature>) {
            // Add all elements from passed list
            final newList = [...?signature, ...child];
            return copyWith(signature: newList);
          } else if (child is Signature) {
            // Add single element to existing list or create new list
            final newList = [
              ...?signature,
              child,
            ];
            return copyWith(signature: newList);
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
      case 'target':
        return ['Reference'];
      case 'occurred':
      case 'occurredX':
        return [
          'Period',
          'FhirDateTime',
        ];
      case 'occurredPeriod':
        return ['Period'];
      case 'occurredDateTime':
        return ['FhirDateTime'];
      case 'recorded':
        return ['FhirInstant'];
      case 'policy':
        return ['FhirUri'];
      case 'location':
        return ['Reference'];
      case 'reason':
        return ['CodeableConcept'];
      case 'activity':
        return ['CodeableConcept'];
      case 'agent':
        return ['ProvenanceAgent'];
      case 'entity':
        return ['ProvenanceEntity'];
      case 'signature':
        return ['Signature'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Provenance]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Provenance createProperty(
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
      case 'target':
        {
          return copyWith(
            target: <Reference>[],
          );
        }
      case 'occurred':
      case 'occurredX':
      case 'occurredPeriod':
        {
          return copyWith(
            occurredX: Period.empty(),
          );
        }
      case 'occurredDateTime':
        {
          return copyWith(
            occurredX: FhirDateTime.empty(),
          );
        }
      case 'recorded':
        {
          return copyWith(
            recorded: FhirInstant.empty(),
          );
        }
      case 'policy':
        {
          return copyWith(
            policy: <FhirUri>[],
          );
        }
      case 'location':
        {
          return copyWith(
            location: Reference.empty(),
          );
        }
      case 'reason':
        {
          return copyWith(
            reason: <CodeableConcept>[],
          );
        }
      case 'activity':
        {
          return copyWith(
            activity: CodeableConcept.empty(),
          );
        }
      case 'agent':
        {
          return copyWith(
            agent: <ProvenanceAgent>[],
          );
        }
      case 'entity':
        {
          return copyWith(
            entity: <ProvenanceEntity>[],
          );
        }
      case 'signature':
        {
          return copyWith(
            signature: <Signature>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Provenance clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool occurred = false,
    bool policy = false,
    bool location = false,
    bool reason = false,
    bool activity = false,
    bool entity = false,
    bool signature = false,
  }) {
    return Provenance(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      target: target,
      occurredX: occurred ? null : occurredX,
      recorded: recorded,
      policy: policy ? null : this.policy,
      location: location ? null : this.location,
      reason: reason ? null : this.reason,
      activity: activity ? null : this.activity,
      agent: agent,
      entity: entity ? null : this.entity,
      signature: signature ? null : this.signature,
    );
  }

  @override
  Provenance clone() => throw UnimplementedError();
  @override
  Provenance copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? target,
    OccurredXProvenance? occurredX,
    FhirInstant? recorded,
    List<FhirUri>? policy,
    Reference? location,
    List<CodeableConcept>? reason,
    CodeableConcept? activity,
    List<ProvenanceAgent>? agent,
    List<ProvenanceEntity>? entity,
    List<Signature>? signature,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Provenance(
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
      target: target
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.target',
                ),
              )
              .toList() ??
          this.target,
      occurredX: occurredX?.copyWith(
            objectPath: '$newObjectPath.occurredX',
          ) as OccurredXProvenance? ??
          this.occurredX,
      recorded: recorded?.copyWith(
            objectPath: '$newObjectPath.recorded',
          ) ??
          this.recorded,
      policy: policy
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.policy',
                ),
              )
              .toList() ??
          this.policy,
      location: location?.copyWith(
            objectPath: '$newObjectPath.location',
          ) ??
          this.location,
      reason: reason
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reason',
                ),
              )
              .toList() ??
          this.reason,
      activity: activity?.copyWith(
            objectPath: '$newObjectPath.activity',
          ) ??
          this.activity,
      agent: agent
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.agent',
                ),
              )
              .toList() ??
          this.agent,
      entity: entity
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.entity',
                ),
              )
              .toList() ??
          this.entity,
      signature: signature
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.signature',
                ),
              )
              .toList() ??
          this.signature,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Provenance) {
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
    if (!listEquals<Reference>(
      target,
      o.target,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      occurredX,
      o.occurredX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recorded,
      o.recorded,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      policy,
      o.policy,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      activity,
      o.activity,
    )) {
      return false;
    }
    if (!listEquals<ProvenanceAgent>(
      agent,
      o.agent,
    )) {
      return false;
    }
    if (!listEquals<ProvenanceEntity>(
      entity,
      o.entity,
    )) {
      return false;
    }
    if (!listEquals<Signature>(
      signature,
      o.signature,
    )) {
      return false;
    }
    return true;
  }
}

/// [ProvenanceAgent]
/// An actor taking a role in an activity for which it can be assigned some
/// degree of responsibility for the activity taking place.
class ProvenanceAgent extends BackboneElement {
  /// Primary constructor for
  /// [ProvenanceAgent]

  const ProvenanceAgent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.role,
    required this.who,
    this.onBehalfOf,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Provenance.agent',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ProvenanceAgent.empty() => ProvenanceAgent(
        who: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProvenanceAgent.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Provenance.agent';
    return ProvenanceAgent(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      role: (json['role'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.role',
              },
            ),
          )
          .toList(),
      who: JsonParser.parseObject<Reference>(
        json,
        'who',
        Reference.fromJson,
        '$objectPath.who',
      )!,
      onBehalfOf: JsonParser.parseObject<Reference>(
        json,
        'onBehalfOf',
        Reference.fromJson,
        '$objectPath.onBehalfOf',
      ),
    );
  }

  /// Deserialize [ProvenanceAgent]
  /// from a [String] or [YamlMap] object
  factory ProvenanceAgent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProvenanceAgent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProvenanceAgent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProvenanceAgent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProvenanceAgent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProvenanceAgent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ProvenanceAgent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ProvenanceAgent';

  /// [type]
  /// The participation the agent had with respect to the activity.
  final CodeableConcept? type;

  /// [role]
  /// The function of the agent with respect to the activity. The security
  /// role enabling the agent with respect to the activity.
  final List<CodeableConcept>? role;

  /// [who]
  /// The individual, device or organization that participated in the event.
  final Reference who;

  /// [onBehalfOf]
  /// The individual, device, or organization for whom the change was made.
  final Reference? onBehalfOf;
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
      'type',
      type,
    );
    addField(
      'role',
      role,
    );
    addField(
      'who',
      who,
    );
    addField(
      'onBehalfOf',
      onBehalfOf,
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
      'type',
      'role',
      'who',
      'onBehalfOf',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'role':
        if (role != null) {
          fields.addAll(role!);
        }
      case 'who':
        fields.add(who);
      case 'onBehalfOf':
        if (onBehalfOf != null) {
          fields.add(onBehalfOf!);
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
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'role':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?role, ...child];
            return copyWith(role: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?role,
              child,
            ];
            return copyWith(role: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'who':
        {
          if (child is Reference) {
            return copyWith(who: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onBehalfOf':
        {
          if (child is Reference) {
            return copyWith(onBehalfOf: child);
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
      case 'type':
        return ['CodeableConcept'];
      case 'role':
        return ['CodeableConcept'];
      case 'who':
        return ['Reference'];
      case 'onBehalfOf':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ProvenanceAgent]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ProvenanceAgent createProperty(
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
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'role':
        {
          return copyWith(
            role: <CodeableConcept>[],
          );
        }
      case 'who':
        {
          return copyWith(
            who: Reference.empty(),
          );
        }
      case 'onBehalfOf':
        {
          return copyWith(
            onBehalfOf: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ProvenanceAgent clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool role = false,
    bool onBehalfOf = false,
  }) {
    return ProvenanceAgent(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type ? null : this.type,
      role: role ? null : this.role,
      who: who,
      onBehalfOf: onBehalfOf ? null : this.onBehalfOf,
    );
  }

  @override
  ProvenanceAgent clone() => throw UnimplementedError();
  @override
  ProvenanceAgent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? role,
    Reference? who,
    Reference? onBehalfOf,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ProvenanceAgent(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      role: role
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.role',
                ),
              )
              .toList() ??
          this.role,
      who: who?.copyWith(
            objectPath: '$newObjectPath.who',
          ) ??
          this.who,
      onBehalfOf: onBehalfOf?.copyWith(
            objectPath: '$newObjectPath.onBehalfOf',
          ) ??
          this.onBehalfOf,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ProvenanceAgent) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      role,
      o.role,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      who,
      o.who,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      onBehalfOf,
      o.onBehalfOf,
    )) {
      return false;
    }
    return true;
  }
}

/// [ProvenanceEntity]
/// An entity used in this activity.
class ProvenanceEntity extends BackboneElement {
  /// Primary constructor for
  /// [ProvenanceEntity]

  const ProvenanceEntity({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.role,
    required this.what,
    this.agent,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Provenance.entity',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ProvenanceEntity.empty() => ProvenanceEntity(
        role: ProvenanceEntityRole.values.first,
        what: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProvenanceEntity.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Provenance.entity';
    return ProvenanceEntity(
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
      role: JsonParser.parsePrimitive<ProvenanceEntityRole>(
        json,
        'role',
        ProvenanceEntityRole.fromJson,
        '$objectPath.role',
      )!,
      what: JsonParser.parseObject<Reference>(
        json,
        'what',
        Reference.fromJson,
        '$objectPath.what',
      )!,
      agent: (json['agent'] as List<dynamic>?)
          ?.map<ProvenanceAgent>(
            (v) => ProvenanceAgent.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.agent',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ProvenanceEntity]
  /// from a [String] or [YamlMap] object
  factory ProvenanceEntity.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProvenanceEntity.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProvenanceEntity.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProvenanceEntity '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProvenanceEntity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProvenanceEntity.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ProvenanceEntity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ProvenanceEntity';

  /// [role]
  /// How the entity was used during the activity.
  final ProvenanceEntityRole role;

  /// [what]
  /// Identity of the Entity used. May be a logical or physical uri and maybe
  /// absolute or relative.
  final Reference what;

  /// [agent]
  /// The entity is attributed to an agent to express the agent's
  /// responsibility for that entity, possibly along with other agents. This
  /// description can be understood as shorthand for saying that the agent
  /// was responsible for the activity which generated the entity.
  final List<ProvenanceAgent>? agent;
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
      'role',
      role,
    );
    addField(
      'what',
      what,
    );
    addField(
      'agent',
      agent,
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
      'role',
      'what',
      'agent',
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
      case 'role':
        fields.add(role);
      case 'what':
        fields.add(what);
      case 'agent':
        if (agent != null) {
          fields.addAll(agent!);
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
      case 'role':
        {
          if (child is ProvenanceEntityRole) {
            return copyWith(role: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'what':
        {
          if (child is Reference) {
            return copyWith(what: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'agent':
        {
          if (child is List<ProvenanceAgent>) {
            // Add all elements from passed list
            final newList = [...?agent, ...child];
            return copyWith(agent: newList);
          } else if (child is ProvenanceAgent) {
            // Add single element to existing list or create new list
            final newList = [
              ...?agent,
              child,
            ];
            return copyWith(agent: newList);
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
      case 'role':
        return ['FhirCode'];
      case 'what':
        return ['Reference'];
      case 'agent':
        return ['ProvenanceAgent'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ProvenanceEntity]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ProvenanceEntity createProperty(
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
      case 'role':
        {
          return copyWith(
            role: ProvenanceEntityRole.empty(),
          );
        }
      case 'what':
        {
          return copyWith(
            what: Reference.empty(),
          );
        }
      case 'agent':
        {
          return copyWith(
            agent: <ProvenanceAgent>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ProvenanceEntity clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool agent = false,
  }) {
    return ProvenanceEntity(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      role: role,
      what: what,
      agent: agent ? null : this.agent,
    );
  }

  @override
  ProvenanceEntity clone() => throw UnimplementedError();
  @override
  ProvenanceEntity copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ProvenanceEntityRole? role,
    Reference? what,
    List<ProvenanceAgent>? agent,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ProvenanceEntity(
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
      role: role?.copyWith(
            objectPath: '$newObjectPath.role',
          ) ??
          this.role,
      what: what?.copyWith(
            objectPath: '$newObjectPath.what',
          ) ??
          this.what,
      agent: agent
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.agent',
                ),
              )
              .toList() ??
          this.agent,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ProvenanceEntity) {
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
      role,
      o.role,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      what,
      o.what,
    )) {
      return false;
    }
    if (!listEquals<ProvenanceAgent>(
      agent,
      o.agent,
    )) {
      return false;
    }
    return true;
  }
}
