import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        Provenance,
        ProvenanceAgent,
        ProvenanceEntity,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ProvenanceBuilder]
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
class ProvenanceBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ProvenanceBuilder]

  ProvenanceBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.target,
    this.occurredX,
    this.recorded,
    this.policy,
    this.location,
    this.reason,
    this.activity,
    this.agent,
    this.entity,
    this.signature,
  }) : super(
          objectPath: 'Provenance',
          resourceType: R4ResourceType.Provenance,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ProvenanceBuilder.empty() => ProvenanceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProvenanceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Provenance';
    return ProvenanceBuilder(
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
      target: (json['target'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.target',
              },
            ),
          )
          .toList(),
      occurredX: JsonParser.parsePolymorphic<OccurredXProvenanceBuilder>(
        json,
        {
          'occurredPeriod': PeriodBuilder.fromJson,
          'occurredDateTime': FhirDateTimeBuilder.fromJson,
        },
        objectPath,
      ),
      recorded: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'recorded',
        FhirInstantBuilder.fromJson,
        '$objectPath.recorded',
      ),
      policy: JsonParser.parsePrimitiveList<FhirUriBuilder>(
        json,
        'policy',
        FhirUriBuilder.fromJson,
        '$objectPath.policy',
      ),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
              },
            ),
          )
          .toList(),
      activity: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'activity',
        CodeableConceptBuilder.fromJson,
        '$objectPath.activity',
      ),
      agent: (json['agent'] as List<dynamic>?)
          ?.map<ProvenanceAgentBuilder>(
            (v) => ProvenanceAgentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.agent',
              },
            ),
          )
          .toList(),
      entity: (json['entity'] as List<dynamic>?)
          ?.map<ProvenanceEntityBuilder>(
            (v) => ProvenanceEntityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.entity',
              },
            ),
          )
          .toList(),
      signature: (json['signature'] as List<dynamic>?)
          ?.map<SignatureBuilder>(
            (v) => SignatureBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.signature',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ProvenanceBuilder]
  /// from a [String] or [YamlMap] object
  factory ProvenanceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProvenanceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProvenanceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProvenanceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProvenanceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProvenanceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ProvenanceBuilder.fromJson(json);
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
  List<ReferenceBuilder>? target;

  /// [occurredX]
  /// The period during which the activity occurred.
  OccurredXProvenanceBuilder? occurredX;

  /// Getter for [occurredPeriod] as a PeriodBuilder
  PeriodBuilder? get occurredPeriod => occurredX?.isAs<PeriodBuilder>();

  /// Getter for [occurredDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get occurredDateTime =>
      occurredX?.isAs<FhirDateTimeBuilder>();

  /// [recorded]
  /// The instant of time at which the activity was recorded.
  FhirInstantBuilder? recorded;

  /// [policy]
  /// Policy or plan the activity was defined by. Typically, a single
  /// activity may have multiple applicable policy documents, such as patient
  /// consent, guarantor funding, etc.
  List<FhirUriBuilder>? policy;

  /// [location]
  /// Where the activity occurred, if relevant.
  ReferenceBuilder? location;

  /// [reason]
  /// The reason that the activity was taking place.
  List<CodeableConceptBuilder>? reason;

  /// [activity]
  /// An activity is something that occurs over a period of time and acts
  /// upon or with entities; it may include consuming, processing,
  /// transforming, modifying, relocating, using, or generating entities.
  CodeableConceptBuilder? activity;

  /// [agent]
  /// An actor taking a role in an activity for which it can be assigned some
  /// degree of responsibility for the activity taking place.
  List<ProvenanceAgentBuilder>? agent;

  /// [entity]
  /// An entity used in this activity.
  List<ProvenanceEntityBuilder>? entity;

  /// [signature]
  /// A digital signature on the target Reference(s). The signer should match
  /// a Provenance.agent. The purpose of the signature is indicated.
  List<SignatureBuilder>? signature;

  /// Converts a [ProvenanceBuilder]
  /// to [Provenance]
  @override
  Provenance build() => Provenance.fromJson(toJson());

  /// Converts a [ProvenanceBuilder]
  /// to a [Map<String, dynamic>]
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
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
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
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
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
      case 'target':
        if (target != null) {
          fields.addAll(target!);
        }
      case 'occurred':
        if (occurredX != null) {
          fields.add(occurredX!);
        }
      case 'occurredX':
        if (occurredX != null) {
          fields.add(occurredX!);
        }
      case 'occurredPeriod':
        if (occurredX is PeriodBuilder) {
          fields.add(occurredX!);
        }
      case 'occurredDateTime':
        if (occurredX is FhirDateTimeBuilder) {
          fields.add(occurredX!);
        }
      case 'recorded':
        if (recorded != null) {
          fields.add(recorded!);
        }
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
        if (agent != null) {
          fields.addAll(agent!);
        }
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
      case 'target':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            target = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            target = [
              ...(target ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurred':
      case 'occurredX':
        {
          if (child is OccurredXProvenanceBuilder) {
            occurredX = child;
            return;
          } else {
            if (child is PeriodBuilder) {
              occurredX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              occurredX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurredPeriod':
        {
          if (child is PeriodBuilder) {
            occurredX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurredDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            occurredX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recorded':
        {
          if (child is FhirInstantBuilder) {
            recorded = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                recorded = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'policy':
        {
          if (child is List<FhirUriBuilder>) {
            // Replace or create new list
            policy = child;
            return;
          } else if (child is FhirUriBuilder) {
            // Add single element to existing list or create new list
            policy = [
              ...(policy ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUriBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirUriBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              policy = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                policy = [
                  ...(policy ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
        {
          if (child is ReferenceBuilder) {
            location = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reason':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            reason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            reason = [
              ...(reason ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'activity':
        {
          if (child is CodeableConceptBuilder) {
            activity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'agent':
        {
          if (child is List<ProvenanceAgentBuilder>) {
            // Replace or create new list
            agent = child;
            return;
          } else if (child is ProvenanceAgentBuilder) {
            // Add single element to existing list or create new list
            agent = [
              ...(agent ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'entity':
        {
          if (child is List<ProvenanceEntityBuilder>) {
            // Replace or create new list
            entity = child;
            return;
          } else if (child is ProvenanceEntityBuilder) {
            // Add single element to existing list or create new list
            entity = [
              ...(entity ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'signature':
        {
          if (child is List<SignatureBuilder>) {
            // Replace or create new list
            signature = child;
            return;
          } else if (child is SignatureBuilder) {
            // Add single element to existing list or create new list
            signature = [
              ...(signature ?? []),
              child,
            ];
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
      case 'target':
        return ['ReferenceBuilder'];
      case 'occurred':
      case 'occurredX':
        return [
          'PeriodBuilder',
          'FhirDateTimeBuilder',
        ];
      case 'occurredPeriod':
        return ['PeriodBuilder'];
      case 'occurredDateTime':
        return ['FhirDateTimeBuilder'];
      case 'recorded':
        return ['FhirInstantBuilder'];
      case 'policy':
        return ['FhirUriBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'reason':
        return ['CodeableConceptBuilder'];
      case 'activity':
        return ['CodeableConceptBuilder'];
      case 'agent':
        return ['ProvenanceAgentBuilder'];
      case 'entity':
        return ['ProvenanceEntityBuilder'];
      case 'signature':
        return ['SignatureBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ProvenanceBuilder]
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
      case 'target':
        {
          target = <ReferenceBuilder>[];
          return;
        }
      case 'occurred':
      case 'occurredX':
      case 'occurredPeriod':
        {
          occurredX = PeriodBuilder.empty();
          return;
        }
      case 'occurredDateTime':
        {
          occurredX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'recorded':
        {
          recorded = FhirInstantBuilder.empty();
          return;
        }
      case 'policy':
        {
          policy = <FhirUriBuilder>[];
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = <CodeableConceptBuilder>[];
          return;
        }
      case 'activity':
        {
          activity = CodeableConceptBuilder.empty();
          return;
        }
      case 'agent':
        {
          agent = <ProvenanceAgentBuilder>[];
          return;
        }
      case 'entity':
        {
          entity = <ProvenanceEntityBuilder>[];
          return;
        }
      case 'signature':
        {
          signature = <SignatureBuilder>[];
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
    bool target = false,
    bool occurred = false,
    bool recorded = false,
    bool policy = false,
    bool location = false,
    bool reason = false,
    bool activity = false,
    bool agent = false,
    bool entity = false,
    bool signature = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (target) this.target = null;
    if (occurred) occurredX = null;
    if (recorded) this.recorded = null;
    if (policy) this.policy = null;
    if (location) this.location = null;
    if (reason) this.reason = null;
    if (activity) this.activity = null;
    if (agent) this.agent = null;
    if (entity) this.entity = null;
    if (signature) this.signature = null;
  }

  @override
  ProvenanceBuilder clone() => throw UnimplementedError();
  @override
  ProvenanceBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<ReferenceBuilder>? target,
    OccurredXProvenanceBuilder? occurredX,
    FhirInstantBuilder? recorded,
    List<FhirUriBuilder>? policy,
    ReferenceBuilder? location,
    List<CodeableConceptBuilder>? reason,
    CodeableConceptBuilder? activity,
    List<ProvenanceAgentBuilder>? agent,
    List<ProvenanceEntityBuilder>? entity,
    List<SignatureBuilder>? signature,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ProvenanceBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      target: target ?? this.target,
      occurredX: occurredX ?? this.occurredX,
      recorded: recorded ?? this.recorded,
      policy: policy ?? this.policy,
      location: location ?? this.location,
      reason: reason ?? this.reason,
      activity: activity ?? this.activity,
      agent: agent ?? this.agent,
      entity: entity ?? this.entity,
      signature: signature ?? this.signature,
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
    if (o is! ProvenanceBuilder) {
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
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<FhirUriBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<ProvenanceAgentBuilder>(
      agent,
      o.agent,
    )) {
      return false;
    }
    if (!listEquals<ProvenanceEntityBuilder>(
      entity,
      o.entity,
    )) {
      return false;
    }
    if (!listEquals<SignatureBuilder>(
      signature,
      o.signature,
    )) {
      return false;
    }
    return true;
  }
}

/// [ProvenanceAgentBuilder]
/// An actor taking a role in an activity for which it can be assigned some
/// degree of responsibility for the activity taking place.
class ProvenanceAgentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ProvenanceAgentBuilder]

  ProvenanceAgentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.role,
    this.who,
    this.onBehalfOf,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Provenance.agent',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ProvenanceAgentBuilder.empty() => ProvenanceAgentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProvenanceAgentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Provenance.agent';
    return ProvenanceAgentBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      role: (json['role'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.role',
              },
            ),
          )
          .toList(),
      who: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'who',
        ReferenceBuilder.fromJson,
        '$objectPath.who',
      ),
      onBehalfOf: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'onBehalfOf',
        ReferenceBuilder.fromJson,
        '$objectPath.onBehalfOf',
      ),
    );
  }

  /// Deserialize [ProvenanceAgentBuilder]
  /// from a [String] or [YamlMap] object
  factory ProvenanceAgentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProvenanceAgentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProvenanceAgentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProvenanceAgentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProvenanceAgentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProvenanceAgentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ProvenanceAgentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ProvenanceAgent';

  /// [type]
  /// The participation the agent had with respect to the activity.
  CodeableConceptBuilder? type;

  /// [role]
  /// The function of the agent with respect to the activity. The security
  /// role enabling the agent with respect to the activity.
  List<CodeableConceptBuilder>? role;

  /// [who]
  /// The individual, device or organization that participated in the event.
  ReferenceBuilder? who;

  /// [onBehalfOf]
  /// The individual, device, or organization for whom the change was made.
  ReferenceBuilder? onBehalfOf;

  /// Converts a [ProvenanceAgentBuilder]
  /// to [ProvenanceAgent]
  @override
  ProvenanceAgent build() => ProvenanceAgent.fromJson(toJson());

  /// Converts a [ProvenanceAgentBuilder]
  /// to a [Map<String, dynamic>]
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
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
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
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'role':
        if (role != null) {
          fields.addAll(role!);
        }
      case 'who':
        if (who != null) {
          fields.add(who!);
        }
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'role':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            role = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            role = [
              ...(role ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'who':
        {
          if (child is ReferenceBuilder) {
            who = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'onBehalfOf':
        {
          if (child is ReferenceBuilder) {
            onBehalfOf = child;
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      case 'who':
        return ['ReferenceBuilder'];
      case 'onBehalfOf':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ProvenanceAgentBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'role':
        {
          role = <CodeableConceptBuilder>[];
          return;
        }
      case 'who':
        {
          who = ReferenceBuilder.empty();
          return;
        }
      case 'onBehalfOf':
        {
          onBehalfOf = ReferenceBuilder.empty();
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
    bool type = false,
    bool role = false,
    bool who = false,
    bool onBehalfOf = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (role) this.role = null;
    if (who) this.who = null;
    if (onBehalfOf) this.onBehalfOf = null;
  }

  @override
  ProvenanceAgentBuilder clone() => throw UnimplementedError();
  @override
  ProvenanceAgentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    List<CodeableConceptBuilder>? role,
    ReferenceBuilder? who,
    ReferenceBuilder? onBehalfOf,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ProvenanceAgentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      role: role ?? this.role,
      who: who ?? this.who,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
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
    if (o is! ProvenanceAgentBuilder) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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

/// [ProvenanceEntityBuilder]
/// An entity used in this activity.
class ProvenanceEntityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ProvenanceEntityBuilder]

  ProvenanceEntityBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.what,
    this.agent,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Provenance.entity',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ProvenanceEntityBuilder.empty() => ProvenanceEntityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProvenanceEntityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Provenance.entity';
    return ProvenanceEntityBuilder(
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
      role: JsonParser.parsePrimitive<ProvenanceEntityRoleBuilder>(
        json,
        'role',
        ProvenanceEntityRoleBuilder.fromJson,
        '$objectPath.role',
      ),
      what: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'what',
        ReferenceBuilder.fromJson,
        '$objectPath.what',
      ),
      agent: (json['agent'] as List<dynamic>?)
          ?.map<ProvenanceAgentBuilder>(
            (v) => ProvenanceAgentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.agent',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ProvenanceEntityBuilder]
  /// from a [String] or [YamlMap] object
  factory ProvenanceEntityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProvenanceEntityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProvenanceEntityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProvenanceEntityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProvenanceEntityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProvenanceEntityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ProvenanceEntityBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ProvenanceEntity';

  /// [role]
  /// How the entity was used during the activity.
  ProvenanceEntityRoleBuilder? role;

  /// [what]
  /// Identity of the Entity used. May be a logical or physical uri and maybe
  /// absolute or relative.
  ReferenceBuilder? what;

  /// [agent]
  /// The entity is attributed to an agent to express the agent's
  /// responsibility for that entity, possibly along with other agents. This
  /// description can be understood as shorthand for saying that the agent
  /// was responsible for the activity which generated the entity.
  List<ProvenanceAgentBuilder>? agent;

  /// Converts a [ProvenanceEntityBuilder]
  /// to [ProvenanceEntity]
  @override
  ProvenanceEntity build() => ProvenanceEntity.fromJson(toJson());

  /// Converts a [ProvenanceEntityBuilder]
  /// to a [Map<String, dynamic>]
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
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
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
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
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
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'what':
        if (what != null) {
          fields.add(what!);
        }
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
      case 'role':
        {
          if (child is ProvenanceEntityRoleBuilder) {
            role = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ProvenanceEntityRoleBuilder(stringValue);
                role = converted;
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
      case 'what':
        {
          if (child is ReferenceBuilder) {
            what = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'agent':
        {
          if (child is List<ProvenanceAgentBuilder>) {
            // Replace or create new list
            agent = child;
            return;
          } else if (child is ProvenanceAgentBuilder) {
            // Add single element to existing list or create new list
            agent = [
              ...(agent ?? []),
              child,
            ];
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
      case 'role':
        return ['FhirCodeEnumBuilder'];
      case 'what':
        return ['ReferenceBuilder'];
      case 'agent':
        return ['ProvenanceAgentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ProvenanceEntityBuilder]
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
      case 'role':
        {
          role = ProvenanceEntityRoleBuilder.empty();
          return;
        }
      case 'what':
        {
          what = ReferenceBuilder.empty();
          return;
        }
      case 'agent':
        {
          agent = <ProvenanceAgentBuilder>[];
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
    bool role = false,
    bool what = false,
    bool agent = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (role) this.role = null;
    if (what) this.what = null;
    if (agent) this.agent = null;
  }

  @override
  ProvenanceEntityBuilder clone() => throw UnimplementedError();
  @override
  ProvenanceEntityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ProvenanceEntityRoleBuilder? role,
    ReferenceBuilder? what,
    List<ProvenanceAgentBuilder>? agent,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ProvenanceEntityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      what: what ?? this.what,
      agent: agent ?? this.agent,
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
    if (o is! ProvenanceEntityBuilder) {
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
    if (!listEquals<ProvenanceAgentBuilder>(
      agent,
      o.agent,
    )) {
      return false;
    }
    return true;
  }
}
