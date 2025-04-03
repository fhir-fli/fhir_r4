import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Composition]
/// A set of healthcare-related information that is assembled together into
/// a single logical package that provides a single coherent statement of
/// meaning, establishes its own context and that has clinical attestation
/// with regard to who is making the statement. A Composition defines the
/// structure and narrative content necessary for a document. However, a
/// Composition alone does not constitute a document. Rather, the
/// Composition must be the first entry in a Bundle where
/// Bundle.type=document, and any other resources referenced from
/// Composition must be included as subsequent entries in the Bundle (for
/// example Patient, Practitioner, Encounter, etc.).
class Composition extends DomainResource {
  /// Primary constructor for
  /// [Composition]

  const Composition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    required this.type,
    this.category,
    this.subject,
    this.encounter,
    required this.date,
    required this.author,
    required this.title,
    this.confidentiality,
    this.attester,
    this.custodian,
    this.relatesTo,
    this.event,
    this.section,
  }) : super(
          objectPath: 'Composition',
          resourceType: R4ResourceType.Composition,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Composition.empty() => Composition(
        status: CompositionStatus.values.first,
        type: CodeableConcept.empty(),
        date: FhirDateTime.empty(),
        author: <Reference>[],
        title: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Composition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Composition';
    return Composition(
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
      status: JsonParser.parsePrimitive<CompositionStatus>(
        json,
        'status',
        CompositionStatus.fromJson,
        '$objectPath.status',
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      )!,
      author: (json['author'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.author',
              },
            ),
          )
          .toList(),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      )!,
      confidentiality: JsonParser.parsePrimitive<FhirCode>(
        json,
        'confidentiality',
        FhirCode.fromJson,
        '$objectPath.confidentiality',
      ),
      attester: (json['attester'] as List<dynamic>?)
          ?.map<CompositionAttester>(
            (v) => CompositionAttester.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.attester',
              },
            ),
          )
          .toList(),
      custodian: JsonParser.parseObject<Reference>(
        json,
        'custodian',
        Reference.fromJson,
        '$objectPath.custodian',
      ),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<CompositionRelatesTo>(
            (v) => CompositionRelatesTo.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatesTo',
              },
            ),
          )
          .toList(),
      event: (json['event'] as List<dynamic>?)
          ?.map<CompositionEvent>(
            (v) => CompositionEvent.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.event',
              },
            ),
          )
          .toList(),
      section: (json['section'] as List<dynamic>?)
          ?.map<CompositionSection>(
            (v) => CompositionSection.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.section',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Composition]
  /// from a [String] or [YamlMap] object
  factory Composition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Composition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Composition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Composition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Composition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Composition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Composition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Composition';

  /// [identifier]
  /// A version-independent identifier for the Composition. This identifier
  /// stays constant as the composition is changed over time.
  final Identifier? identifier;

  /// [status]
  /// The workflow/clinical status of this composition. The status is a
  /// marker for the clinical standing of the document.
  final CompositionStatus status;

  /// [type]
  /// Specifies the particular kind of composition (e.g. History and
  /// Physical, Discharge Summary, Progress Note). This usually equates to
  /// the purpose of making the composition.
  final CodeableConcept type;

  /// [category]
  /// A categorization for the type of the composition - helps for indexing
  /// and searching. This may be implied by or derived from the code
  /// specified in the Composition Type.
  final List<CodeableConcept>? category;

  /// [subject]
  /// Who or what the composition is about. The composition can be about a
  /// person, (patient or healthcare practitioner), a device (e.g. a machine)
  /// or even a group of subjects (such as a document about a herd of
  /// livestock, or a set of patients that share a common exposure).
  final Reference? subject;

  /// [encounter]
  /// Describes the clinical encounter or type of care this documentation is
  /// associated with.
  final Reference? encounter;

  /// [date]
  /// The composition editing time, when the composition was last logically
  /// changed by the author.
  final FhirDateTime date;

  /// [author]
  /// Identifies who is responsible for the information in the composition,
  /// not necessarily who typed it in.
  final List<Reference> author;

  /// [title]
  /// Official human-readable label for the composition.
  final FhirString title;

  /// [confidentiality]
  /// The code specifying the level of confidentiality of the Composition.
  final FhirCode? confidentiality;

  /// [attester]
  /// A participant who has attested to the accuracy of the
  /// composition/document.
  final List<CompositionAttester>? attester;

  /// [custodian]
  /// Identifies the organization or group who is responsible for ongoing
  /// maintenance of and access to the composition/document information.
  final Reference? custodian;

  /// [relatesTo]
  /// Relationships that this composition has with other compositions or
  /// documents that already exist.
  final List<CompositionRelatesTo>? relatesTo;

  /// [event]
  /// The clinical service, such as a colonoscopy or an appendectomy, being
  /// documented.
  final List<CompositionEvent>? event;

  /// [section]
  /// The root of the sections that make up the composition.
  final List<CompositionSection>? section;
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
      'status',
      status,
    );
    addField(
      'type',
      type,
    );
    addField(
      'category',
      category,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'encounter',
      encounter,
    );
    addField(
      'date',
      date,
    );
    addField(
      'author',
      author,
    );
    addField(
      'title',
      title,
    );
    addField(
      'confidentiality',
      confidentiality,
    );
    addField(
      'attester',
      attester,
    );
    addField(
      'custodian',
      custodian,
    );
    addField(
      'relatesTo',
      relatesTo,
    );
    addField(
      'event',
      event,
    );
    addField(
      'section',
      section,
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
      'status',
      'type',
      'category',
      'subject',
      'encounter',
      'date',
      'author',
      'title',
      'confidentiality',
      'attester',
      'custodian',
      'relatesTo',
      'event',
      'section',
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
      case 'status':
        fields.add(status);
      case 'type':
        fields.add(type);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'date':
        fields.add(date);
      case 'author':
        fields.addAll(author);
      case 'title':
        fields.add(title);
      case 'confidentiality':
        if (confidentiality != null) {
          fields.add(confidentiality!);
        }
      case 'attester':
        if (attester != null) {
          fields.addAll(attester!);
        }
      case 'custodian':
        if (custodian != null) {
          fields.add(custodian!);
        }
      case 'relatesTo':
        if (relatesTo != null) {
          fields.addAll(relatesTo!);
        }
      case 'event':
        if (event != null) {
          fields.addAll(event!);
        }
      case 'section':
        if (section != null) {
          fields.addAll(section!);
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
      case 'status':
        {
          if (child is CompositionStatus) {
            return copyWith(status: child);
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
      case 'category':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?category, ...child];
            return copyWith(category: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?category,
              child,
            ];
            return copyWith(category: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subject':
        {
          if (child is Reference) {
            return copyWith(subject: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'encounter':
        {
          if (child is Reference) {
            return copyWith(encounter: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'author':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...author, ...child];
            return copyWith(author: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...author,
              child,
            ];
            return copyWith(author: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'confidentiality':
        {
          if (child is FhirCode) {
            return copyWith(confidentiality: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'attester':
        {
          if (child is List<CompositionAttester>) {
            // Add all elements from passed list
            final newList = [...?attester, ...child];
            return copyWith(attester: newList);
          } else if (child is CompositionAttester) {
            // Add single element to existing list or create new list
            final newList = [
              ...?attester,
              child,
            ];
            return copyWith(attester: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'custodian':
        {
          if (child is Reference) {
            return copyWith(custodian: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'relatesTo':
        {
          if (child is List<CompositionRelatesTo>) {
            // Add all elements from passed list
            final newList = [...?relatesTo, ...child];
            return copyWith(relatesTo: newList);
          } else if (child is CompositionRelatesTo) {
            // Add single element to existing list or create new list
            final newList = [
              ...?relatesTo,
              child,
            ];
            return copyWith(relatesTo: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'event':
        {
          if (child is List<CompositionEvent>) {
            // Add all elements from passed list
            final newList = [...?event, ...child];
            return copyWith(event: newList);
          } else if (child is CompositionEvent) {
            // Add single element to existing list or create new list
            final newList = [
              ...?event,
              child,
            ];
            return copyWith(event: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'section':
        {
          if (child is List<CompositionSection>) {
            // Add all elements from passed list
            final newList = [...?section, ...child];
            return copyWith(section: newList);
          } else if (child is CompositionSection) {
            // Add single element to existing list or create new list
            final newList = [
              ...?section,
              child,
            ];
            return copyWith(section: newList);
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
      case 'status':
        return ['FhirCode'];
      case 'type':
        return ['CodeableConcept'];
      case 'category':
        return ['CodeableConcept'];
      case 'subject':
        return ['Reference'];
      case 'encounter':
        return ['Reference'];
      case 'date':
        return ['FhirDateTime'];
      case 'author':
        return ['Reference'];
      case 'title':
        return ['FhirString'];
      case 'confidentiality':
        return ['FhirCode'];
      case 'attester':
        return ['CompositionAttester'];
      case 'custodian':
        return ['Reference'];
      case 'relatesTo':
        return ['CompositionRelatesTo'];
      case 'event':
        return ['CompositionEvent'];
      case 'section':
        return ['CompositionSection'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Composition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Composition createProperty(
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
      case 'status':
        {
          return copyWith(
            status: CompositionStatus.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: <CodeableConcept>[],
          );
        }
      case 'subject':
        {
          return copyWith(
            subject: Reference.empty(),
          );
        }
      case 'encounter':
        {
          return copyWith(
            encounter: Reference.empty(),
          );
        }
      case 'date':
        {
          return copyWith(
            date: FhirDateTime.empty(),
          );
        }
      case 'author':
        {
          return copyWith(
            author: <Reference>[],
          );
        }
      case 'title':
        {
          return copyWith(
            title: FhirString.empty(),
          );
        }
      case 'confidentiality':
        {
          return copyWith(
            confidentiality: FhirCode.empty(),
          );
        }
      case 'attester':
        {
          return copyWith(
            attester: <CompositionAttester>[],
          );
        }
      case 'custodian':
        {
          return copyWith(
            custodian: Reference.empty(),
          );
        }
      case 'relatesTo':
        {
          return copyWith(
            relatesTo: <CompositionRelatesTo>[],
          );
        }
      case 'event':
        {
          return copyWith(
            event: <CompositionEvent>[],
          );
        }
      case 'section':
        {
          return copyWith(
            section: <CompositionSection>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Composition clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool category = false,
    bool subject = false,
    bool encounter = false,
    bool confidentiality = false,
    bool attester = false,
    bool custodian = false,
    bool relatesTo = false,
    bool event = false,
    bool section = false,
  }) {
    return Composition(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      status: status,
      type: type,
      category: category ? null : this.category,
      subject: subject ? null : this.subject,
      encounter: encounter ? null : this.encounter,
      date: date,
      author: author,
      title: title,
      confidentiality: confidentiality ? null : this.confidentiality,
      attester: attester ? null : this.attester,
      custodian: custodian ? null : this.custodian,
      relatesTo: relatesTo ? null : this.relatesTo,
      event: event ? null : this.event,
      section: section ? null : this.section,
    );
  }

  @override
  Composition clone() => throw UnimplementedError();
  @override
  Composition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    CompositionStatus? status,
    CodeableConcept? type,
    List<CodeableConcept>? category,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? date,
    List<Reference>? author,
    FhirString? title,
    FhirCode? confidentiality,
    List<CompositionAttester>? attester,
    Reference? custodian,
    List<CompositionRelatesTo>? relatesTo,
    List<CompositionEvent>? event,
    List<CompositionSection>? section,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Composition(
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
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      author: author
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.author',
                ),
              )
              .toList() ??
          this.author,
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      confidentiality: confidentiality?.copyWith(
            objectPath: '$newObjectPath.confidentiality',
          ) ??
          this.confidentiality,
      attester: attester
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.attester',
                ),
              )
              .toList() ??
          this.attester,
      custodian: custodian?.copyWith(
            objectPath: '$newObjectPath.custodian',
          ) ??
          this.custodian,
      relatesTo: relatesTo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relatesTo',
                ),
              )
              .toList() ??
          this.relatesTo,
      event: event
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.event',
                ),
              )
              .toList() ??
          this.event,
      section: section
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.section',
                ),
              )
              .toList() ??
          this.section,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Composition) {
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
    if (!listEquals<CodeableConcept>(
      category,
      o.category,
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
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      confidentiality,
      o.confidentiality,
    )) {
      return false;
    }
    if (!listEquals<CompositionAttester>(
      attester,
      o.attester,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      custodian,
      o.custodian,
    )) {
      return false;
    }
    if (!listEquals<CompositionRelatesTo>(
      relatesTo,
      o.relatesTo,
    )) {
      return false;
    }
    if (!listEquals<CompositionEvent>(
      event,
      o.event,
    )) {
      return false;
    }
    if (!listEquals<CompositionSection>(
      section,
      o.section,
    )) {
      return false;
    }
    return true;
  }
}

/// [CompositionAttester]
/// A participant who has attested to the accuracy of the
/// composition/document.
class CompositionAttester extends BackboneElement {
  /// Primary constructor for
  /// [CompositionAttester]

  const CompositionAttester({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.time,
    this.party,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Composition.attester',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CompositionAttester.empty() => CompositionAttester(
        mode: CompositionAttestationMode.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CompositionAttester.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Composition.attester';
    return CompositionAttester(
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
      mode: JsonParser.parsePrimitive<CompositionAttestationMode>(
        json,
        'mode',
        CompositionAttestationMode.fromJson,
        '$objectPath.mode',
      )!,
      time: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'time',
        FhirDateTime.fromJson,
        '$objectPath.time',
      ),
      party: JsonParser.parseObject<Reference>(
        json,
        'party',
        Reference.fromJson,
        '$objectPath.party',
      ),
    );
  }

  /// Deserialize [CompositionAttester]
  /// from a [String] or [YamlMap] object
  factory CompositionAttester.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CompositionAttester.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CompositionAttester.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CompositionAttester '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CompositionAttester]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CompositionAttester.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CompositionAttester.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CompositionAttester';

  /// [mode]
  /// The type of attestation the authenticator offers.
  final CompositionAttestationMode mode;

  /// [time]
  /// When the composition was attested by the party.
  final FhirDateTime? time;

  /// [party]
  /// Who attested the composition in the specified way.
  final Reference? party;
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
      'mode',
      mode,
    );
    addField(
      'time',
      time,
    );
    addField(
      'party',
      party,
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
      'mode',
      'time',
      'party',
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
      case 'mode':
        fields.add(mode);
      case 'time':
        if (time != null) {
          fields.add(time!);
        }
      case 'party':
        if (party != null) {
          fields.add(party!);
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
      case 'mode':
        {
          if (child is CompositionAttestationMode) {
            return copyWith(mode: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'time':
        {
          if (child is FhirDateTime) {
            return copyWith(time: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'party':
        {
          if (child is Reference) {
            return copyWith(party: child);
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
      case 'mode':
        return ['FhirCode'];
      case 'time':
        return ['FhirDateTime'];
      case 'party':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CompositionAttester]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CompositionAttester createProperty(
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
      case 'mode':
        {
          return copyWith(
            mode: CompositionAttestationMode.empty(),
          );
        }
      case 'time':
        {
          return copyWith(
            time: FhirDateTime.empty(),
          );
        }
      case 'party':
        {
          return copyWith(
            party: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CompositionAttester clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool time = false,
    bool party = false,
  }) {
    return CompositionAttester(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      mode: mode,
      time: time ? null : this.time,
      party: party ? null : this.party,
    );
  }

  @override
  CompositionAttester clone() => throw UnimplementedError();
  @override
  CompositionAttester copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CompositionAttestationMode? mode,
    FhirDateTime? time,
    Reference? party,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CompositionAttester(
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
      mode: mode?.copyWith(
            objectPath: '$newObjectPath.mode',
          ) ??
          this.mode,
      time: time?.copyWith(
            objectPath: '$newObjectPath.time',
          ) ??
          this.time,
      party: party?.copyWith(
            objectPath: '$newObjectPath.party',
          ) ??
          this.party,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CompositionAttester) {
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
      mode,
      o.mode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      time,
      o.time,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      party,
      o.party,
    )) {
      return false;
    }
    return true;
  }
}

/// [CompositionRelatesTo]
/// Relationships that this composition has with other compositions or
/// documents that already exist.
class CompositionRelatesTo extends BackboneElement {
  /// Primary constructor for
  /// [CompositionRelatesTo]

  const CompositionRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.targetX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Composition.relatesTo',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CompositionRelatesTo.empty() => CompositionRelatesTo(
        code: DocumentRelationshipType.values.first,
        targetX: Identifier.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CompositionRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Composition.relatesTo';
    return CompositionRelatesTo(
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
      code: JsonParser.parsePrimitive<DocumentRelationshipType>(
        json,
        'code',
        DocumentRelationshipType.fromJson,
        '$objectPath.code',
      )!,
      targetX: JsonParser.parsePolymorphic<TargetXCompositionRelatesTo>(
        json,
        {
          'targetIdentifier': Identifier.fromJson,
          'targetReference': Reference.fromJson,
        },
        objectPath,
      )!,
    );
  }

  /// Deserialize [CompositionRelatesTo]
  /// from a [String] or [YamlMap] object
  factory CompositionRelatesTo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CompositionRelatesTo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CompositionRelatesTo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CompositionRelatesTo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CompositionRelatesTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CompositionRelatesTo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CompositionRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CompositionRelatesTo';

  /// [code]
  /// The type of relationship that this composition has with anther
  /// composition or document.
  final DocumentRelationshipType code;

  /// [targetX]
  /// The target composition/document of this relationship.
  final TargetXCompositionRelatesTo targetX;

  /// Getter for [targetIdentifier] as a Identifier
  Identifier? get targetIdentifier => targetX.isAs<Identifier>();

  /// Getter for [targetReference] as a Reference
  Reference? get targetReference => targetX.isAs<Reference>();
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
      'code',
      code,
    );
    final targetXFhirType = targetX.fhirType;
    addField(
      'target${targetXFhirType.capitalize()}',
      targetX,
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
      'code',
      'targetX',
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
      case 'code':
        fields.add(code);
      case 'target':
        fields.add(targetX);
      case 'targetX':
        fields.add(targetX);
      case 'targetIdentifier':
        if (targetX is Identifier) {
          fields.add(targetX);
        }
      case 'targetReference':
        if (targetX is Reference) {
          fields.add(targetX);
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
      case 'code':
        {
          if (child is DocumentRelationshipType) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetX':
        {
          if (child is TargetXCompositionRelatesTo) {
            return copyWith(targetX: child);
          } else {
            if (child is Identifier) {
              return copyWith(targetX: child);
            }
            if (child is Reference) {
              return copyWith(targetX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'targetIdentifier':
        {
          if (child is Identifier) {
            return copyWith(targetX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetReference':
        {
          if (child is Reference) {
            return copyWith(targetX: child);
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
      case 'code':
        return ['FhirCode'];
      case 'target':
      case 'targetX':
        return [
          'Identifier',
          'Reference',
        ];
      case 'targetIdentifier':
        return ['Identifier'];
      case 'targetReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CompositionRelatesTo]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CompositionRelatesTo createProperty(
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
      case 'code':
        {
          return copyWith(
            code: DocumentRelationshipType.empty(),
          );
        }
      case 'target':
      case 'targetX':
      case 'targetIdentifier':
        {
          return copyWith(
            targetX: Identifier.empty(),
          );
        }
      case 'targetReference':
        {
          return copyWith(
            targetX: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CompositionRelatesTo clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return CompositionRelatesTo(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      targetX: targetX,
    );
  }

  @override
  CompositionRelatesTo clone() => throw UnimplementedError();
  @override
  CompositionRelatesTo copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DocumentRelationshipType? code,
    TargetXCompositionRelatesTo? targetX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CompositionRelatesTo(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      targetX: targetX?.copyWith(
            objectPath: '$newObjectPath.targetX',
          ) as TargetXCompositionRelatesTo? ??
          this.targetX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CompositionRelatesTo) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      targetX,
      o.targetX,
    )) {
      return false;
    }
    return true;
  }
}

/// [CompositionEvent]
/// The clinical service, such as a colonoscopy or an appendectomy, being
/// documented.
class CompositionEvent extends BackboneElement {
  /// Primary constructor for
  /// [CompositionEvent]

  const CompositionEvent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.period,
    this.detail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Composition.event',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CompositionEvent.empty() => const CompositionEvent();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CompositionEvent.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Composition.event';
    return CompositionEvent(
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
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CompositionEvent]
  /// from a [String] or [YamlMap] object
  factory CompositionEvent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CompositionEvent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CompositionEvent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CompositionEvent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CompositionEvent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CompositionEvent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CompositionEvent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CompositionEvent';

  /// [code]
  /// This list of codes represents the main clinical acts, such as a
  /// colonoscopy or an appendectomy, being documented. In some cases, the
  /// event is inherent in the typeCode, such as a "History and Physical
  /// Report" in which the procedure being documented is necessarily a
  /// "History and Physical" act.
  final List<CodeableConcept>? code;

  /// [period]
  /// The period of time covered by the documentation. There is no assertion
  /// that the documentation is a complete representation for this period,
  /// only that it documents events during this time.
  final Period? period;

  /// [detail]
  /// The description and/or reference of the event(s) being documented. For
  /// example, this could be used to document such a colonoscopy or an
  /// appendectomy.
  final List<Reference>? detail;
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
      'code',
      code,
    );
    addField(
      'period',
      period,
    );
    addField(
      'detail',
      detail,
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
      'code',
      'period',
      'detail',
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
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'detail':
        if (detail != null) {
          fields.addAll(detail!);
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
      case 'code':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?code, ...child];
            return copyWith(code: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?code,
              child,
            ];
            return copyWith(code: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is Period) {
            return copyWith(period: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detail':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?detail, ...child];
            return copyWith(detail: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?detail,
              child,
            ];
            return copyWith(detail: newList);
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
      case 'code':
        return ['CodeableConcept'];
      case 'period':
        return ['Period'];
      case 'detail':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CompositionEvent]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CompositionEvent createProperty(
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
      case 'code':
        {
          return copyWith(
            code: <CodeableConcept>[],
          );
        }
      case 'period':
        {
          return copyWith(
            period: Period.empty(),
          );
        }
      case 'detail':
        {
          return copyWith(
            detail: <Reference>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CompositionEvent clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool code = false,
    bool period = false,
    bool detail = false,
  }) {
    return CompositionEvent(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code ? null : this.code,
      period: period ? null : this.period,
      detail: detail ? null : this.detail,
    );
  }

  @override
  CompositionEvent clone() => throw UnimplementedError();
  @override
  CompositionEvent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    Period? period,
    List<Reference>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CompositionEvent(
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
      code: code
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.code',
                ),
              )
              .toList() ??
          this.code,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      detail: detail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.detail',
                ),
              )
              .toList() ??
          this.detail,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CompositionEvent) {
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
    if (!listEquals<CodeableConcept>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [CompositionSection]
/// The root of the sections that make up the composition.
class CompositionSection extends BackboneElement {
  /// Primary constructor for
  /// [CompositionSection]

  const CompositionSection({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.title,
    this.code,
    this.author,
    this.focus,
    this.text,
    this.mode,
    this.orderedBy,
    this.entry,
    this.emptyReason,
    this.section,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Composition.section',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CompositionSection.empty() => const CompositionSection();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CompositionSection.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Composition.section';
    return CompositionSection(
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
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      author: (json['author'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.author',
              },
            ),
          )
          .toList(),
      focus: JsonParser.parseObject<Reference>(
        json,
        'focus',
        Reference.fromJson,
        '$objectPath.focus',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      mode: JsonParser.parsePrimitive<ListMode>(
        json,
        'mode',
        ListMode.fromJson,
        '$objectPath.mode',
      ),
      orderedBy: JsonParser.parseObject<CodeableConcept>(
        json,
        'orderedBy',
        CodeableConcept.fromJson,
        '$objectPath.orderedBy',
      ),
      entry: (json['entry'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.entry',
              },
            ),
          )
          .toList(),
      emptyReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'emptyReason',
        CodeableConcept.fromJson,
        '$objectPath.emptyReason',
      ),
      section: (json['section'] as List<dynamic>?)
          ?.map<CompositionSection>(
            (v) => CompositionSection.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.section',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CompositionSection]
  /// from a [String] or [YamlMap] object
  factory CompositionSection.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CompositionSection.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CompositionSection.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CompositionSection '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CompositionSection]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CompositionSection.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CompositionSection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CompositionSection';

  /// [title]
  /// The label for this particular section. This will be part of the
  /// rendered content for the document, and is often used to build a table
  /// of contents.
  final FhirString? title;

  /// [code]
  /// A code identifying the kind of content contained within the section.
  /// This must be consistent with the section title.
  final CodeableConcept? code;

  /// [author]
  /// Identifies who is responsible for the information in this section, not
  /// necessarily who typed it in.
  final List<Reference>? author;

  /// [focus]
  /// The actual focus of the section when it is not the subject of the
  /// composition, but instead represents something or someone associated
  /// with the subject such as (for a patient subject) a spouse, parent,
  /// fetus, or donor. If not focus is specified, the focus is assumed to be
  /// focus of the parent section, or, for a section in the Composition
  /// itself, the subject of the composition. Sections with a focus SHALL
  /// only include resources where the logical subject (patient, subject,
  /// focus, etc.) matches the section focus, or the resources have no
  /// logical subject (few resources).
  final Reference? focus;

  /// [text]
  /// A human-readable narrative that contains the attested content of the
  /// section, used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to
  /// just read the narrative.
  final Narrative? text;

  /// [mode]
  /// How the entry list was prepared - whether it is a working list that is
  /// suitable for being maintained on an ongoing basis, or if it represents
  /// a snapshot of a list of items from another source, or whether it is a
  /// prepared list where items may be marked as added, modified or deleted.
  final ListMode? mode;

  /// [orderedBy]
  /// Specifies the order applied to the items in the section entries.
  final CodeableConcept? orderedBy;

  /// [entry]
  /// A reference to the actual resource from which the narrative in the
  /// section is derived.
  final List<Reference>? entry;

  /// [emptyReason]
  /// If the section is empty, why the list is empty. An empty section
  /// typically has some text explaining the empty reason.
  final CodeableConcept? emptyReason;

  /// [section]
  /// A nested sub-section within this section.
  final List<CompositionSection>? section;
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
      'title',
      title,
    );
    addField(
      'code',
      code,
    );
    addField(
      'author',
      author,
    );
    addField(
      'focus',
      focus,
    );
    addField(
      'text',
      text,
    );
    addField(
      'mode',
      mode,
    );
    addField(
      'orderedBy',
      orderedBy,
    );
    addField(
      'entry',
      entry,
    );
    addField(
      'emptyReason',
      emptyReason,
    );
    addField(
      'section',
      section,
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
      'title',
      'code',
      'author',
      'focus',
      'text',
      'mode',
      'orderedBy',
      'entry',
      'emptyReason',
      'section',
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
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'author':
        if (author != null) {
          fields.addAll(author!);
        }
      case 'focus':
        if (focus != null) {
          fields.add(focus!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'mode':
        if (mode != null) {
          fields.add(mode!);
        }
      case 'orderedBy':
        if (orderedBy != null) {
          fields.add(orderedBy!);
        }
      case 'entry':
        if (entry != null) {
          fields.addAll(entry!);
        }
      case 'emptyReason':
        if (emptyReason != null) {
          fields.add(emptyReason!);
        }
      case 'section':
        if (section != null) {
          fields.addAll(section!);
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
      case 'title':
        {
          if (child is FhirString) {
            return copyWith(title: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'author':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?author, ...child];
            return copyWith(author: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?author,
              child,
            ];
            return copyWith(author: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'focus':
        {
          if (child is Reference) {
            return copyWith(focus: child);
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
      case 'mode':
        {
          if (child is ListMode) {
            return copyWith(mode: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'orderedBy':
        {
          if (child is CodeableConcept) {
            return copyWith(orderedBy: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'entry':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?entry, ...child];
            return copyWith(entry: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?entry,
              child,
            ];
            return copyWith(entry: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'emptyReason':
        {
          if (child is CodeableConcept) {
            return copyWith(emptyReason: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'section':
        {
          if (child is List<CompositionSection>) {
            // Add all elements from passed list
            final newList = [...?section, ...child];
            return copyWith(section: newList);
          } else if (child is CompositionSection) {
            // Add single element to existing list or create new list
            final newList = [
              ...?section,
              child,
            ];
            return copyWith(section: newList);
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
      case 'title':
        return ['FhirString'];
      case 'code':
        return ['CodeableConcept'];
      case 'author':
        return ['Reference'];
      case 'focus':
        return ['Reference'];
      case 'text':
        return ['Narrative'];
      case 'mode':
        return ['FhirCode'];
      case 'orderedBy':
        return ['CodeableConcept'];
      case 'entry':
        return ['Reference'];
      case 'emptyReason':
        return ['CodeableConcept'];
      case 'section':
        return ['CompositionSection'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CompositionSection]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  CompositionSection createProperty(
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
      case 'title':
        {
          return copyWith(
            title: FhirString.empty(),
          );
        }
      case 'code':
        {
          return copyWith(
            code: CodeableConcept.empty(),
          );
        }
      case 'author':
        {
          return copyWith(
            author: <Reference>[],
          );
        }
      case 'focus':
        {
          return copyWith(
            focus: Reference.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'mode':
        {
          return copyWith(
            mode: ListMode.empty(),
          );
        }
      case 'orderedBy':
        {
          return copyWith(
            orderedBy: CodeableConcept.empty(),
          );
        }
      case 'entry':
        {
          return copyWith(
            entry: <Reference>[],
          );
        }
      case 'emptyReason':
        {
          return copyWith(
            emptyReason: CodeableConcept.empty(),
          );
        }
      case 'section':
        {
          return copyWith(
            section: <CompositionSection>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  CompositionSection clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool title = false,
    bool code = false,
    bool author = false,
    bool focus = false,
    bool text = false,
    bool mode = false,
    bool orderedBy = false,
    bool entry = false,
    bool emptyReason = false,
    bool section = false,
  }) {
    return CompositionSection(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      title: title ? null : this.title,
      code: code ? null : this.code,
      author: author ? null : this.author,
      focus: focus ? null : this.focus,
      text: text ? null : this.text,
      mode: mode ? null : this.mode,
      orderedBy: orderedBy ? null : this.orderedBy,
      entry: entry ? null : this.entry,
      emptyReason: emptyReason ? null : this.emptyReason,
      section: section ? null : this.section,
    );
  }

  @override
  CompositionSection clone() => throw UnimplementedError();
  @override
  CompositionSection copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    CodeableConcept? code,
    List<Reference>? author,
    Reference? focus,
    Narrative? text,
    ListMode? mode,
    CodeableConcept? orderedBy,
    List<Reference>? entry,
    CodeableConcept? emptyReason,
    List<CompositionSection>? section,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CompositionSection(
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
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      author: author
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.author',
                ),
              )
              .toList() ??
          this.author,
      focus: focus?.copyWith(
            objectPath: '$newObjectPath.focus',
          ) ??
          this.focus,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      mode: mode?.copyWith(
            objectPath: '$newObjectPath.mode',
          ) ??
          this.mode,
      orderedBy: orderedBy?.copyWith(
            objectPath: '$newObjectPath.orderedBy',
          ) ??
          this.orderedBy,
      entry: entry
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.entry',
                ),
              )
              .toList() ??
          this.entry,
      emptyReason: emptyReason?.copyWith(
            objectPath: '$newObjectPath.emptyReason',
          ) ??
          this.emptyReason,
      section: section
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.section',
                ),
              )
              .toList() ??
          this.section,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CompositionSection) {
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
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      mode,
      o.mode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      orderedBy,
      o.orderedBy,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      entry,
      o.entry,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      emptyReason,
      o.emptyReason,
    )) {
      return false;
    }
    if (!listEquals<CompositionSection>(
      section,
      o.section,
    )) {
      return false;
    }
    return true;
  }
}
