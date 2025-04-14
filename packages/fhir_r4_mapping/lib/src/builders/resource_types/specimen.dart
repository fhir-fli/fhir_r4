import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        R4ResourceType,
        Specimen,
        SpecimenCollection,
        SpecimenContainer,
        SpecimenProcessing,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [SpecimenBuilder]
/// A sample to be used for analysis.
class SpecimenBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [SpecimenBuilder]

  SpecimenBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.accessionIdentifier,
    this.status,
    this.type,
    this.subject,
    this.receivedTime,
    this.parent,
    this.request,
    this.collection,
    this.processing,
    this.container,
    this.condition,
    this.note,
  }) : super(
          objectPath: 'Specimen',
          resourceType: R4ResourceType.Specimen,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SpecimenBuilder.empty() => SpecimenBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Specimen';
    return SpecimenBuilder(
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
      accessionIdentifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'accessionIdentifier',
        IdentifierBuilder.fromJson,
        '$objectPath.accessionIdentifier',
      ),
      status: JsonParser.parsePrimitive<SpecimenStatusBuilder>(
        json,
        'status',
        SpecimenStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      receivedTime: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'receivedTime',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.receivedTime',
      ),
      parent: (json['parent'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parent',
              },
            ),
          )
          .toList(),
      request: (json['request'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.request',
              },
            ),
          )
          .toList(),
      collection: JsonParser.parseObject<SpecimenCollectionBuilder>(
        json,
        'collection',
        SpecimenCollectionBuilder.fromJson,
        '$objectPath.collection',
      ),
      processing: (json['processing'] as List<dynamic>?)
          ?.map<SpecimenProcessingBuilder>(
            (v) => SpecimenProcessingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.processing',
              },
            ),
          )
          .toList(),
      container: (json['container'] as List<dynamic>?)
          ?.map<SpecimenContainerBuilder>(
            (v) => SpecimenContainerBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.container',
              },
            ),
          )
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.condition',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SpecimenBuilder]
  /// from a [String] or [YamlMap] object
  factory SpecimenBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Specimen';

  /// [identifier]
  /// Id for specimen.
  List<IdentifierBuilder>? identifier;

  /// [accessionIdentifier]
  /// The identifier assigned by the lab when accessioning specimen(s). This
  /// is not necessarily the same as the specimen identifier, depending on
  /// local lab procedures.
  IdentifierBuilder? accessionIdentifier;

  /// [status]
  /// The availability of the specimen.
  SpecimenStatusBuilder? status;

  /// [type]
  /// The kind of material that forms the specimen.
  CodeableConceptBuilder? type;

  /// [subject]
  /// Where the specimen came from. This may be from patient(s), from a
  /// location (e.g., the source of an environmental sample), or a sampling
  /// of a substance or a device.
  ReferenceBuilder? subject;

  /// [receivedTime]
  /// Time when specimen was received for processing or testing.
  FhirDateTimeBuilder? receivedTime;

  /// [parent]
  /// Reference to the parent (source) specimen which is used when the
  /// specimen was either derived from or a component of another specimen.
  List<ReferenceBuilder>? parent;

  /// [request]
  /// Details concerning a service request that required a specimen to be
  /// collected.
  List<ReferenceBuilder>? request;

  /// [collection]
  /// Details concerning the specimen collection.
  SpecimenCollectionBuilder? collection;

  /// [processing]
  /// Details concerning processing and processing steps for the specimen.
  List<SpecimenProcessingBuilder>? processing;

  /// [container]
  /// The container holding the specimen. The recursive nature of containers;
  /// i.e. blood in tube in tray in rack is not addressed here.
  List<SpecimenContainerBuilder>? container;

  /// [condition]
  /// A mode or state of being that describes the nature of the specimen.
  List<CodeableConceptBuilder>? condition;

  /// [note]
  /// To communicate any details or issues about the specimen or during the
  /// specimen collection. (for example: broken vial, sent with patient,
  /// frozen).
  List<AnnotationBuilder>? note;

  /// Converts a [SpecimenBuilder]
  /// to [Specimen]
  @override
  Specimen build() => Specimen.fromJson(toJson());

  /// Converts a [SpecimenBuilder]
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
    addField('accessionIdentifier', accessionIdentifier);
    addField('status', status);
    addField('type', type);
    addField('subject', subject);
    addField('receivedTime', receivedTime);
    addField('parent', parent);
    addField('request', request);
    addField('collection', collection);
    addField('processing', processing);
    addField('container', container);
    addField('condition', condition);
    addField('note', note);
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
      'accessionIdentifier',
      'status',
      'type',
      'subject',
      'receivedTime',
      'parent',
      'request',
      'collection',
      'processing',
      'container',
      'condition',
      'note',
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
      case 'accessionIdentifier':
        if (accessionIdentifier != null) {
          fields.add(accessionIdentifier!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'receivedTime':
        if (receivedTime != null) {
          fields.add(receivedTime!);
        }
      case 'parent':
        if (parent != null) {
          fields.addAll(parent!);
        }
      case 'request':
        if (request != null) {
          fields.addAll(request!);
        }
      case 'collection':
        if (collection != null) {
          fields.add(collection!);
        }
      case 'processing':
        if (processing != null) {
          fields.addAll(processing!);
        }
      case 'container':
        if (container != null) {
          fields.addAll(container!);
        }
      case 'condition':
        if (condition != null) {
          fields.addAll(condition!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
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
      case 'accessionIdentifier':
        {
          if (child is IdentifierBuilder) {
            accessionIdentifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is SpecimenStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = SpecimenStatusBuilder(stringValue);
                status = converted;
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'receivedTime':
        {
          if (child is FhirDateTimeBuilder) {
            receivedTime = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                receivedTime = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'parent':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            parent = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            parent = [
              ...(parent ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'request':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            request = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            request = [
              ...(request ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'collection':
        {
          if (child is SpecimenCollectionBuilder) {
            collection = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'processing':
        {
          if (child is List<SpecimenProcessingBuilder>) {
            // Replace or create new list
            processing = child;
            return;
          } else if (child is SpecimenProcessingBuilder) {
            // Add single element to existing list or create new list
            processing = [
              ...(processing ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'container':
        {
          if (child is List<SpecimenContainerBuilder>) {
            // Replace or create new list
            container = child;
            return;
          } else if (child is SpecimenContainerBuilder) {
            // Add single element to existing list or create new list
            container = [
              ...(container ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'condition':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            condition = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            condition = [
              ...(condition ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [
              ...(note ?? []),
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
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'accessionIdentifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'receivedTime':
        return ['FhirDateTimeBuilder'];
      case 'parent':
        return ['ReferenceBuilder'];
      case 'request':
        return ['ReferenceBuilder'];
      case 'collection':
        return ['SpecimenCollectionBuilder'];
      case 'processing':
        return ['SpecimenProcessingBuilder'];
      case 'container':
        return ['SpecimenContainerBuilder'];
      case 'condition':
        return ['CodeableConceptBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenBuilder]
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
      case 'accessionIdentifier':
        {
          accessionIdentifier = IdentifierBuilder.empty();
          return;
        }
      case 'status':
        {
          status = SpecimenStatusBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'receivedTime':
        {
          receivedTime = FhirDateTimeBuilder.empty();
          return;
        }
      case 'parent':
        {
          parent = <ReferenceBuilder>[];
          return;
        }
      case 'request':
        {
          request = <ReferenceBuilder>[];
          return;
        }
      case 'collection':
        {
          collection = SpecimenCollectionBuilder.empty();
          return;
        }
      case 'processing':
        {
          processing = <SpecimenProcessingBuilder>[];
          return;
        }
      case 'container':
        {
          container = <SpecimenContainerBuilder>[];
          return;
        }
      case 'condition':
        {
          condition = <CodeableConceptBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SpecimenBuilder clone() => throw UnimplementedError();
  @override
  SpecimenBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    IdentifierBuilder? accessionIdentifier,
    SpecimenStatusBuilder? status,
    CodeableConceptBuilder? type,
    ReferenceBuilder? subject,
    FhirDateTimeBuilder? receivedTime,
    List<ReferenceBuilder>? parent,
    List<ReferenceBuilder>? request,
    SpecimenCollectionBuilder? collection,
    List<SpecimenProcessingBuilder>? processing,
    List<SpecimenContainerBuilder>? container,
    List<CodeableConceptBuilder>? condition,
    List<AnnotationBuilder>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = SpecimenBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      accessionIdentifier: accessionIdentifier ?? this.accessionIdentifier,
      status: status ?? this.status,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      receivedTime: receivedTime ?? this.receivedTime,
      parent: parent ?? this.parent,
      request: request ?? this.request,
      collection: collection ?? this.collection,
      processing: processing ?? this.processing,
      container: container ?? this.container,
      condition: condition ?? this.condition,
      note: note ?? this.note,
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
    if (o is! SpecimenBuilder) {
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
      accessionIdentifier,
      o.accessionIdentifier,
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      receivedTime,
      o.receivedTime,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      parent,
      o.parent,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      request,
      o.request,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      collection,
      o.collection,
    )) {
      return false;
    }
    if (!listEquals<SpecimenProcessingBuilder>(
      processing,
      o.processing,
    )) {
      return false;
    }
    if (!listEquals<SpecimenContainerBuilder>(
      container,
      o.container,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [SpecimenCollectionBuilder]
/// Details concerning the specimen collection.
class SpecimenCollectionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SpecimenCollectionBuilder]

  SpecimenCollectionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.collector,
    this.collectedX,
    this.duration,
    this.quantity,
    this.method,
    this.bodySite,
    this.fastingStatusX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Specimen.collection',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SpecimenCollectionBuilder.empty() => SpecimenCollectionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenCollectionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Specimen.collection';
    return SpecimenCollectionBuilder(
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
      collector: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'collector',
        ReferenceBuilder.fromJson,
        '$objectPath.collector',
      ),
      collectedX:
          JsonParser.parsePolymorphic<CollectedXSpecimenCollectionBuilder>(
        json,
        {
          'collectedDateTime': FhirDateTimeBuilder.fromJson,
          'collectedPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      duration: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'duration',
        FhirDurationBuilder.fromJson,
        '$objectPath.duration',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      method: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'method',
        CodeableConceptBuilder.fromJson,
        '$objectPath.method',
      ),
      bodySite: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'bodySite',
        CodeableConceptBuilder.fromJson,
        '$objectPath.bodySite',
      ),
      fastingStatusX:
          JsonParser.parsePolymorphic<FastingStatusXSpecimenCollectionBuilder>(
        json,
        {
          'fastingStatusCodeableConcept': CodeableConceptBuilder.fromJson,
          'fastingStatusDuration': FhirDurationBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [SpecimenCollectionBuilder]
  /// from a [String] or [YamlMap] object
  factory SpecimenCollectionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenCollectionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenCollectionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenCollectionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenCollectionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenCollectionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenCollectionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenCollection';

  /// [collector]
  /// Person who collected the specimen.
  ReferenceBuilder? collector;

  /// [collectedX]
  /// Time when specimen was collected from subject - the physiologically
  /// relevant time.
  CollectedXSpecimenCollectionBuilder? collectedX;

  /// Getter for [collectedDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get collectedDateTime =>
      collectedX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [collectedPeriod] as a PeriodBuilder
  PeriodBuilder? get collectedPeriod => collectedX?.isAs<PeriodBuilder>();

  /// [duration]
  /// The span of time over which the collection of a specimen occurred.
  FhirDurationBuilder? duration;

  /// [quantity]
  /// The quantity of specimen collected; for instance the volume of a blood
  /// sample, or the physical measurement of an anatomic pathology sample.
  QuantityBuilder? quantity;

  /// [method]
  /// A coded value specifying the technique that is used to perform the
  /// procedure.
  CodeableConceptBuilder? method;

  /// [bodySite]
  /// Anatomical location from which the specimen was collected (if subject
  /// is a patient). This is the target site. This element is not used for
  /// environmental specimens.
  CodeableConceptBuilder? bodySite;

  /// [fastingStatusX]
  /// Abstinence or reduction from some or all food, drink, or both, for a
  /// period of time prior to sample collection.
  FastingStatusXSpecimenCollectionBuilder? fastingStatusX;

  /// Getter for [fastingStatusCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get fastingStatusCodeableConcept =>
      fastingStatusX?.isAs<CodeableConceptBuilder>();

  /// Getter for [fastingStatusDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get fastingStatusDuration =>
      fastingStatusX?.isAs<FhirDurationBuilder>();

  /// Converts a [SpecimenCollectionBuilder]
  /// to [SpecimenCollection]
  @override
  SpecimenCollection build() => SpecimenCollection.fromJson(toJson());

  /// Converts a [SpecimenCollectionBuilder]
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
    addField('collector', collector);
    if (collectedX != null) {
      final fhirType = collectedX!.fhirType;
      addField('collected${fhirType.capitalizeFirstLetter()}', collectedX);
    }

    addField('duration', duration);
    addField('quantity', quantity);
    addField('method', method);
    addField('bodySite', bodySite);
    if (fastingStatusX != null) {
      final fhirType = fastingStatusX!.fhirType;
      addField(
          'fastingStatus${fhirType.capitalizeFirstLetter()}', fastingStatusX,);
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
      'collector',
      'collectedX',
      'duration',
      'quantity',
      'method',
      'bodySite',
      'fastingStatusX',
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
      case 'collector':
        if (collector != null) {
          fields.add(collector!);
        }
      case 'collected':
        if (collectedX != null) {
          fields.add(collectedX!);
        }
      case 'collectedX':
        if (collectedX != null) {
          fields.add(collectedX!);
        }
      case 'collectedDateTime':
        if (collectedX is FhirDateTimeBuilder) {
          fields.add(collectedX!);
        }
      case 'collectedPeriod':
        if (collectedX is PeriodBuilder) {
          fields.add(collectedX!);
        }
      case 'duration':
        if (duration != null) {
          fields.add(duration!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
        }
      case 'fastingStatus':
        if (fastingStatusX != null) {
          fields.add(fastingStatusX!);
        }
      case 'fastingStatusX':
        if (fastingStatusX != null) {
          fields.add(fastingStatusX!);
        }
      case 'fastingStatusCodeableConcept':
        if (fastingStatusX is CodeableConceptBuilder) {
          fields.add(fastingStatusX!);
        }
      case 'fastingStatusDuration':
        if (fastingStatusX is FhirDurationBuilder) {
          fields.add(fastingStatusX!);
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
      case 'collector':
        {
          if (child is ReferenceBuilder) {
            collector = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'collected':
      case 'collectedX':
        {
          if (child is CollectedXSpecimenCollectionBuilder) {
            collectedX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              collectedX = child;
              return;
            }
            if (child is PeriodBuilder) {
              collectedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'collectedDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            collectedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'collectedPeriod':
        {
          if (child is PeriodBuilder) {
            collectedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'duration':
        {
          if (child is FhirDurationBuilder) {
            duration = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
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
      case 'bodySite':
        {
          if (child is CodeableConceptBuilder) {
            bodySite = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'fastingStatus':
      case 'fastingStatusX':
        {
          if (child is FastingStatusXSpecimenCollectionBuilder) {
            fastingStatusX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              fastingStatusX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              fastingStatusX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'fastingStatusCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            fastingStatusX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fastingStatusDuration':
        {
          if (child is FhirDurationBuilder) {
            fastingStatusX = child;
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
      case 'collector':
        return ['ReferenceBuilder'];
      case 'collected':
      case 'collectedX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
        ];
      case 'collectedDateTime':
        return ['FhirDateTimeBuilder'];
      case 'collectedPeriod':
        return ['PeriodBuilder'];
      case 'duration':
        return ['FhirDurationBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'method':
        return ['CodeableConceptBuilder'];
      case 'bodySite':
        return ['CodeableConceptBuilder'];
      case 'fastingStatus':
      case 'fastingStatusX':
        return [
          'CodeableConceptBuilder',
          'FhirDurationBuilder',
        ];
      case 'fastingStatusCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'fastingStatusDuration':
        return ['FhirDurationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenCollectionBuilder]
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
      case 'collector':
        {
          collector = ReferenceBuilder.empty();
          return;
        }
      case 'collected':
      case 'collectedX':
      case 'collectedDateTime':
        {
          collectedX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'collectedPeriod':
        {
          collectedX = PeriodBuilder.empty();
          return;
        }
      case 'duration':
        {
          duration = FhirDurationBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'method':
        {
          method = CodeableConceptBuilder.empty();
          return;
        }
      case 'bodySite':
        {
          bodySite = CodeableConceptBuilder.empty();
          return;
        }
      case 'fastingStatus':
      case 'fastingStatusX':
      case 'fastingStatusCodeableConcept':
        {
          fastingStatusX = CodeableConceptBuilder.empty();
          return;
        }
      case 'fastingStatusDuration':
        {
          fastingStatusX = FhirDurationBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SpecimenCollectionBuilder clone() => throw UnimplementedError();
  @override
  SpecimenCollectionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? collector,
    CollectedXSpecimenCollectionBuilder? collectedX,
    FhirDurationBuilder? duration,
    QuantityBuilder? quantity,
    CodeableConceptBuilder? method,
    CodeableConceptBuilder? bodySite,
    FastingStatusXSpecimenCollectionBuilder? fastingStatusX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SpecimenCollectionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      collector: collector ?? this.collector,
      collectedX: collectedX ?? this.collectedX,
      duration: duration ?? this.duration,
      quantity: quantity ?? this.quantity,
      method: method ?? this.method,
      bodySite: bodySite ?? this.bodySite,
      fastingStatusX: fastingStatusX ?? this.fastingStatusX,
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
    if (o is! SpecimenCollectionBuilder) {
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
      collector,
      o.collector,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      collectedX,
      o.collectedX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      duration,
      o.duration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
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
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      fastingStatusX,
      o.fastingStatusX,
    )) {
      return false;
    }
    return true;
  }
}

/// [SpecimenProcessingBuilder]
/// Details concerning processing and processing steps for the specimen.
class SpecimenProcessingBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SpecimenProcessingBuilder]

  SpecimenProcessingBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.procedure,
    this.additive,
    this.timeX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Specimen.processing',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SpecimenProcessingBuilder.empty() => SpecimenProcessingBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenProcessingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Specimen.processing';
    return SpecimenProcessingBuilder(
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
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      procedure: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'procedure',
        CodeableConceptBuilder.fromJson,
        '$objectPath.procedure',
      ),
      additive: (json['additive'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.additive',
              },
            ),
          )
          .toList(),
      timeX: JsonParser.parsePolymorphic<TimeXSpecimenProcessingBuilder>(
        json,
        {
          'timeDateTime': FhirDateTimeBuilder.fromJson,
          'timePeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [SpecimenProcessingBuilder]
  /// from a [String] or [YamlMap] object
  factory SpecimenProcessingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenProcessingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenProcessingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenProcessingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenProcessingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenProcessingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenProcessingBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenProcessing';

  /// [description]
  /// Textual description of procedure.
  FhirStringBuilder? description;

  /// [procedure]
  /// A coded value specifying the procedure used to process the specimen.
  CodeableConceptBuilder? procedure;

  /// [additive]
  /// Material used in the processing step.
  List<ReferenceBuilder>? additive;

  /// [timeX]
  /// A record of the time or period when the specimen processing occurred.
  /// For example the time of sample fixation or the period of time the
  /// sample was in formalin.
  TimeXSpecimenProcessingBuilder? timeX;

  /// Getter for [timeDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get timeDateTime => timeX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [timePeriod] as a PeriodBuilder
  PeriodBuilder? get timePeriod => timeX?.isAs<PeriodBuilder>();

  /// Converts a [SpecimenProcessingBuilder]
  /// to [SpecimenProcessing]
  @override
  SpecimenProcessing build() => SpecimenProcessing.fromJson(toJson());

  /// Converts a [SpecimenProcessingBuilder]
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
    addField('procedure', procedure);
    addField('additive', additive);
    if (timeX != null) {
      final fhirType = timeX!.fhirType;
      addField('time${fhirType.capitalizeFirstLetter()}', timeX);
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
      'description',
      'procedure',
      'additive',
      'timeX',
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
      case 'procedure':
        if (procedure != null) {
          fields.add(procedure!);
        }
      case 'additive':
        if (additive != null) {
          fields.addAll(additive!);
        }
      case 'time':
        if (timeX != null) {
          fields.add(timeX!);
        }
      case 'timeX':
        if (timeX != null) {
          fields.add(timeX!);
        }
      case 'timeDateTime':
        if (timeX is FhirDateTimeBuilder) {
          fields.add(timeX!);
        }
      case 'timePeriod':
        if (timeX is PeriodBuilder) {
          fields.add(timeX!);
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
      case 'procedure':
        {
          if (child is CodeableConceptBuilder) {
            procedure = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'additive':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            additive = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            additive = [
              ...(additive ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'time':
      case 'timeX':
        {
          if (child is TimeXSpecimenProcessingBuilder) {
            timeX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              timeX = child;
              return;
            }
            if (child is PeriodBuilder) {
              timeX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timeDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            timeX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timePeriod':
        {
          if (child is PeriodBuilder) {
            timeX = child;
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
      case 'description':
        return ['FhirStringBuilder'];
      case 'procedure':
        return ['CodeableConceptBuilder'];
      case 'additive':
        return ['ReferenceBuilder'];
      case 'time':
      case 'timeX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
        ];
      case 'timeDateTime':
        return ['FhirDateTimeBuilder'];
      case 'timePeriod':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenProcessingBuilder]
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
          description = FhirStringBuilder.empty();
          return;
        }
      case 'procedure':
        {
          procedure = CodeableConceptBuilder.empty();
          return;
        }
      case 'additive':
        {
          additive = <ReferenceBuilder>[];
          return;
        }
      case 'time':
      case 'timeX':
      case 'timeDateTime':
        {
          timeX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'timePeriod':
        {
          timeX = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SpecimenProcessingBuilder clone() => throw UnimplementedError();
  @override
  SpecimenProcessingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? description,
    CodeableConceptBuilder? procedure,
    List<ReferenceBuilder>? additive,
    TimeXSpecimenProcessingBuilder? timeX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SpecimenProcessingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      procedure: procedure ?? this.procedure,
      additive: additive ?? this.additive,
      timeX: timeX ?? this.timeX,
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
    if (o is! SpecimenProcessingBuilder) {
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
      procedure,
      o.procedure,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      additive,
      o.additive,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timeX,
      o.timeX,
    )) {
      return false;
    }
    return true;
  }
}

/// [SpecimenContainerBuilder]
/// The container holding the specimen. The recursive nature of containers;
/// i.e. blood in tube in tray in rack is not addressed here.
class SpecimenContainerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SpecimenContainerBuilder]

  SpecimenContainerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.description,
    this.type,
    this.capacity,
    this.specimenQuantity,
    this.additiveX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Specimen.container',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SpecimenContainerBuilder.empty() => SpecimenContainerBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenContainerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Specimen.container';
    return SpecimenContainerBuilder(
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
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      capacity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'capacity',
        QuantityBuilder.fromJson,
        '$objectPath.capacity',
      ),
      specimenQuantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'specimenQuantity',
        QuantityBuilder.fromJson,
        '$objectPath.specimenQuantity',
      ),
      additiveX: JsonParser.parsePolymorphic<AdditiveXSpecimenContainerBuilder>(
        json,
        {
          'additiveCodeableConcept': CodeableConceptBuilder.fromJson,
          'additiveReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [SpecimenContainerBuilder]
  /// from a [String] or [YamlMap] object
  factory SpecimenContainerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenContainerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenContainerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenContainerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenContainerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenContainerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenContainerBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenContainer';

  /// [identifier]
  /// Id for container. There may be multiple; a manufacturer's bar code, lab
  /// assigned identifier, etc. The container ID may differ from the specimen
  /// id in some circumstances.
  List<IdentifierBuilder>? identifier;

  /// [description]
  /// Textual description of the container.
  FhirStringBuilder? description;

  /// [type]
  /// The type of container associated with the specimen (e.g. slide,
  /// aliquot, etc.).
  CodeableConceptBuilder? type;

  /// [capacity]
  /// The capacity (volume or other measure) the container may contain.
  QuantityBuilder? capacity;

  /// [specimenQuantity]
  /// The quantity of specimen in the container; may be volume, dimensions,
  /// or other appropriate measurements, depending on the specimen type.
  QuantityBuilder? specimenQuantity;

  /// [additiveX]
  /// Introduced substance to preserve, maintain or enhance the specimen.
  /// Examples: Formalin, Citrate, EDTA.
  AdditiveXSpecimenContainerBuilder? additiveX;

  /// Getter for [additiveCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get additiveCodeableConcept =>
      additiveX?.isAs<CodeableConceptBuilder>();

  /// Getter for [additiveReference] as a ReferenceBuilder
  ReferenceBuilder? get additiveReference =>
      additiveX?.isAs<ReferenceBuilder>();

  /// Converts a [SpecimenContainerBuilder]
  /// to [SpecimenContainer]
  @override
  SpecimenContainer build() => SpecimenContainer.fromJson(toJson());

  /// Converts a [SpecimenContainerBuilder]
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
    addField('identifier', identifier);
    addField('description', description);
    addField('type', type);
    addField('capacity', capacity);
    addField('specimenQuantity', specimenQuantity);
    if (additiveX != null) {
      final fhirType = additiveX!.fhirType;
      addField('additive${fhirType.capitalizeFirstLetter()}', additiveX);
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
      'identifier',
      'description',
      'type',
      'capacity',
      'specimenQuantity',
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'capacity':
        if (capacity != null) {
          fields.add(capacity!);
        }
      case 'specimenQuantity':
        if (specimenQuantity != null) {
          fields.add(specimenQuantity!);
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
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
      case 'specimenQuantity':
        {
          if (child is QuantityBuilder) {
            specimenQuantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'additive':
      case 'additiveX':
        {
          if (child is AdditiveXSpecimenContainerBuilder) {
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
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'capacity':
        return ['QuantityBuilder'];
      case 'specimenQuantity':
        return ['QuantityBuilder'];
      case 'additive':
      case 'additiveX':
        return [
          'CodeableConceptBuilder',
          'ReferenceBuilder',
        ];
      case 'additiveCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'additiveReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenContainerBuilder]
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
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'capacity':
        {
          capacity = QuantityBuilder.empty();
          return;
        }
      case 'specimenQuantity':
        {
          specimenQuantity = QuantityBuilder.empty();
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

  @override
  SpecimenContainerBuilder clone() => throw UnimplementedError();
  @override
  SpecimenContainerBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? description,
    CodeableConceptBuilder? type,
    QuantityBuilder? capacity,
    QuantityBuilder? specimenQuantity,
    AdditiveXSpecimenContainerBuilder? additiveX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SpecimenContainerBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      description: description ?? this.description,
      type: type ?? this.type,
      capacity: capacity ?? this.capacity,
      specimenQuantity: specimenQuantity ?? this.specimenQuantity,
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
    if (o is! SpecimenContainerBuilder) {
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
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
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
      type,
      o.type,
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
      specimenQuantity,
      o.specimenQuantity,
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
