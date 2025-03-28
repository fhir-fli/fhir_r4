import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Questionnaire]
/// A structured set of questions intended to guide the collection of
/// answers from end-users. Questionnaires provide detailed control over
/// order, presentation, phraseology and grouping to allow coherent,
/// consistent data collection.
class Questionnaire extends CanonicalResource {
  /// Primary constructor for
  /// [Questionnaire]

  const Questionnaire({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    super.url,
    this.identifier,
    super.version,
    this.name,
    this.title,
    this.derivedFrom,
    required super.status,
    super.experimental,
    this.subjectType,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.code,
    this.item,
  }) : super(
          objectPath: 'Questionnaire',
          resourceType: R4ResourceType.Questionnaire,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Questionnaire.empty() => Questionnaire(
        status: PublicationStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Questionnaire.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Questionnaire';
    return Questionnaire(
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
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
      derivedFrom: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'derivedFrom',
        FhirCanonical.fromJson,
        '$objectPath.derivedFrom',
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
        '$objectPath.status',
      ),
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
        '$objectPath.experimental',
      ),
      subjectType: JsonParser.parsePrimitiveList<FhirCode>(
        json,
        'subjectType',
        FhirCode.fromJson,
        '$objectPath.subjectType',
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.jurisdiction',
              },
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
        '$objectPath.purpose',
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
        '$objectPath.copyright',
      ),
      approvalDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'approvalDate',
        FhirDate.fromJson,
        '$objectPath.approvalDate',
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'lastReviewDate',
        FhirDate.fromJson,
        '$objectPath.lastReviewDate',
      ),
      effectivePeriod: JsonParser.parseObject<Period>(
        json,
        'effectivePeriod',
        Period.fromJson,
        '$objectPath.effectivePeriod',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      item: (json['item'] as List<dynamic>?)
          ?.map<QuestionnaireItem>(
            (v) => QuestionnaireItem.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Questionnaire]
  /// from a [String] or [YamlMap] object
  factory Questionnaire.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Questionnaire.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Questionnaire.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Questionnaire '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Questionnaire]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Questionnaire.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Questionnaire.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Questionnaire';

  /// [identifier]
  /// A formal identifier that is used to identify this questionnaire when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [name]
  /// A natural language name identifying the questionnaire. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the questionnaire.
  final FhirString? title;

  /// [derivedFrom]
  /// The URL of a Questionnaire that this Questionnaire is based on.
  final List<FhirCanonical>? derivedFrom;

  /// [subjectType]
  /// The types of subjects that can be the subject of responses created for
  /// the questionnaire.
  final List<FhirCode>? subjectType;

  /// [purpose]
  /// Explanation of why this questionnaire is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the questionnaire and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the questionnaire.
  final FhirMarkdown? copyright;

  /// [approvalDate]
  /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  final FhirDate? approvalDate;

  /// [lastReviewDate]
  /// The date on which the resource content was last reviewed. Review
  /// happens periodically after approval but does not change the original
  /// approval date.
  final FhirDate? lastReviewDate;

  /// [effectivePeriod]
  /// The period during which the questionnaire content was or is planned to
  /// be in active use.
  final Period? effectivePeriod;

  /// [code]
  /// An identifier for this question or group of questions in a particular
  /// terminology such as LOINC.
  final List<Coding>? code;

  /// [item]
  /// A particular question, question grouping or display text that is part
  /// of the questionnaire.
  final List<QuestionnaireItem>? item;
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
      'url',
      url,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'version',
      version,
    );
    addField(
      'name',
      name,
    );
    addField(
      'title',
      title,
    );
    addField(
      'derivedFrom',
      derivedFrom,
    );
    addField(
      'status',
      status,
    );
    addField(
      'experimental',
      experimental,
    );
    addField(
      'subjectType',
      subjectType,
    );
    addField(
      'date',
      date,
    );
    addField(
      'publisher',
      publisher,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'description',
      description,
    );
    addField(
      'useContext',
      useContext,
    );
    addField(
      'jurisdiction',
      jurisdiction,
    );
    addField(
      'purpose',
      purpose,
    );
    addField(
      'copyright',
      copyright,
    );
    addField(
      'approvalDate',
      approvalDate,
    );
    addField(
      'lastReviewDate',
      lastReviewDate,
    );
    addField(
      'effectivePeriod',
      effectivePeriod,
    );
    addField(
      'code',
      code,
    );
    addField(
      'item',
      item,
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
      'url',
      'identifier',
      'version',
      'name',
      'title',
      'derivedFrom',
      'status',
      'experimental',
      'subjectType',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'copyright',
      'approvalDate',
      'lastReviewDate',
      'effectivePeriod',
      'code',
      'item',
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
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
        }
      case 'subjectType':
        if (subjectType != null) {
          fields.addAll(subjectType!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.addAll(jurisdiction!);
        }
      case 'purpose':
        if (purpose != null) {
          fields.add(purpose!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      case 'approvalDate':
        if (approvalDate != null) {
          fields.add(approvalDate!);
        }
      case 'lastReviewDate':
        if (lastReviewDate != null) {
          fields.add(lastReviewDate!);
        }
      case 'effectivePeriod':
        if (effectivePeriod != null) {
          fields.add(effectivePeriod!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'item':
        if (item != null) {
          fields.addAll(item!);
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
            final newList = [...?contained, child];
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [...?identifier, child];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
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
      case 'derivedFrom':
        {
          if (child is List<FhirCanonical>) {
            // Add all elements from passed list
            final newList = [...?derivedFrom, ...child];
            return copyWith(derivedFrom: newList);
          } else if (child is FhirCanonical) {
            // Add single element to existing list or create new list
            final newList = [...?derivedFrom, child];
            return copyWith(derivedFrom: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'experimental':
        {
          if (child is FhirBoolean) {
            return copyWith(experimental: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subjectType':
        {
          if (child is List<FhirCode>) {
            // Add all elements from passed list
            final newList = [...?subjectType, ...child];
            return copyWith(subjectType: newList);
          } else if (child is FhirCode) {
            // Add single element to existing list or create new list
            final newList = [...?subjectType, child];
            return copyWith(subjectType: newList);
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
      case 'publisher':
        {
          if (child is FhirString) {
            return copyWith(publisher: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetail>) {
            // Add all elements from passed list
            final newList = [...?contact, ...child];
            return copyWith(contact: newList);
          } else if (child is ContactDetail) {
            // Add single element to existing list or create new list
            final newList = [...?contact, child];
            return copyWith(contact: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdown) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'useContext':
        {
          if (child is List<UsageContext>) {
            // Add all elements from passed list
            final newList = [...?useContext, ...child];
            return copyWith(useContext: newList);
          } else if (child is UsageContext) {
            // Add single element to existing list or create new list
            final newList = [...?useContext, child];
            return copyWith(useContext: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?jurisdiction, ...child];
            return copyWith(jurisdiction: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?jurisdiction, child];
            return copyWith(jurisdiction: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'purpose':
        {
          if (child is FhirMarkdown) {
            return copyWith(purpose: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'copyright':
        {
          if (child is FhirMarkdown) {
            return copyWith(copyright: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'approvalDate':
        {
          if (child is FhirDate) {
            return copyWith(approvalDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lastReviewDate':
        {
          if (child is FhirDate) {
            return copyWith(lastReviewDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectivePeriod':
        {
          if (child is Period) {
            return copyWith(effectivePeriod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is List<Coding>) {
            // Add all elements from passed list
            final newList = [...?code, ...child];
            return copyWith(code: newList);
          } else if (child is Coding) {
            // Add single element to existing list or create new list
            final newList = [...?code, child];
            return copyWith(code: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'item':
        {
          if (child is List<QuestionnaireItem>) {
            // Add all elements from passed list
            final newList = [...?item, ...child];
            return copyWith(item: newList);
          } else if (child is QuestionnaireItem) {
            // Add single element to existing list or create new list
            final newList = [...?item, child];
            return copyWith(item: newList);
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
      case 'url':
        return ['FhirUri'];
      case 'identifier':
        return ['Identifier'];
      case 'version':
        return ['FhirString'];
      case 'name':
        return ['FhirString'];
      case 'title':
        return ['FhirString'];
      case 'derivedFrom':
        return ['FhirCanonical'];
      case 'status':
        return ['FhirCode'];
      case 'experimental':
        return ['FhirBoolean'];
      case 'subjectType':
        return ['FhirCode'];
      case 'date':
        return ['FhirDateTime'];
      case 'publisher':
        return ['FhirString'];
      case 'contact':
        return ['ContactDetail'];
      case 'description':
        return ['FhirMarkdown'];
      case 'useContext':
        return ['UsageContext'];
      case 'jurisdiction':
        return ['CodeableConcept'];
      case 'purpose':
        return ['FhirMarkdown'];
      case 'copyright':
        return ['FhirMarkdown'];
      case 'approvalDate':
        return ['FhirDate'];
      case 'lastReviewDate':
        return ['FhirDate'];
      case 'effectivePeriod':
        return ['Period'];
      case 'code':
        return ['Coding'];
      case 'item':
        return ['QuestionnaireItem'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Questionnaire]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Questionnaire createProperty(
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
      case 'url':
        {
          return copyWith(
            url: FhirUri.empty(),
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'version':
        {
          return copyWith(
            version: FhirString.empty(),
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'title':
        {
          return copyWith(
            title: FhirString.empty(),
          );
        }
      case 'derivedFrom':
        {
          return copyWith(
            derivedFrom: <FhirCanonical>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: PublicationStatus.empty(),
          );
        }
      case 'experimental':
        {
          return copyWith(
            experimental: FhirBoolean.empty(),
          );
        }
      case 'subjectType':
        {
          return copyWith(
            subjectType: <FhirCode>[],
          );
        }
      case 'date':
        {
          return copyWith(
            date: FhirDateTime.empty(),
          );
        }
      case 'publisher':
        {
          return copyWith(
            publisher: FhirString.empty(),
          );
        }
      case 'contact':
        {
          return copyWith(
            contact: <ContactDetail>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirMarkdown.empty(),
          );
        }
      case 'useContext':
        {
          return copyWith(
            useContext: <UsageContext>[],
          );
        }
      case 'jurisdiction':
        {
          return copyWith(
            jurisdiction: <CodeableConcept>[],
          );
        }
      case 'purpose':
        {
          return copyWith(
            purpose: FhirMarkdown.empty(),
          );
        }
      case 'copyright':
        {
          return copyWith(
            copyright: FhirMarkdown.empty(),
          );
        }
      case 'approvalDate':
        {
          return copyWith(
            approvalDate: FhirDate.empty(),
          );
        }
      case 'lastReviewDate':
        {
          return copyWith(
            lastReviewDate: FhirDate.empty(),
          );
        }
      case 'effectivePeriod':
        {
          return copyWith(
            effectivePeriod: Period.empty(),
          );
        }
      case 'code':
        {
          return copyWith(
            code: <Coding>[],
          );
        }
      case 'item':
        {
          return copyWith(
            item: <QuestionnaireItem>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Questionnaire clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool url = false,
    bool identifier = false,
    bool version = false,
    bool name = false,
    bool title = false,
    bool derivedFrom = false,
    bool experimental = false,
    bool subjectType = false,
    bool date = false,
    bool publisher = false,
    bool contact = false,
    bool description = false,
    bool useContext = false,
    bool jurisdiction = false,
    bool purpose = false,
    bool copyright = false,
    bool approvalDate = false,
    bool lastReviewDate = false,
    bool effectivePeriod = false,
    bool code = false,
    bool item = false,
  }) {
    return Questionnaire(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      url: url ? null : this.url,
      identifier: identifier ? null : this.identifier,
      version: version ? null : this.version,
      name: name ? null : this.name,
      title: title ? null : this.title,
      derivedFrom: derivedFrom ? null : this.derivedFrom,
      status: status,
      experimental: experimental ? null : this.experimental,
      subjectType: subjectType ? null : this.subjectType,
      date: date ? null : this.date,
      publisher: publisher ? null : this.publisher,
      contact: contact ? null : this.contact,
      description: description ? null : this.description,
      useContext: useContext ? null : this.useContext,
      jurisdiction: jurisdiction ? null : this.jurisdiction,
      purpose: purpose ? null : this.purpose,
      copyright: copyright ? null : this.copyright,
      approvalDate: approvalDate ? null : this.approvalDate,
      lastReviewDate: lastReviewDate ? null : this.lastReviewDate,
      effectivePeriod: effectivePeriod ? null : this.effectivePeriod,
      code: code ? null : this.code,
      item: item ? null : this.item,
    );
  }

  @override
  Questionnaire clone() => throw UnimplementedError();
  @override
  Questionnaire copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    List<Identifier>? identifier,
    FhirString? version,
    FhirString? name,
    FhirString? title,
    List<FhirCanonical>? derivedFrom,
    PublicationStatus? status,
    FhirBoolean? experimental,
    List<FhirCode>? subjectType,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    List<Coding>? code,
    List<QuestionnaireItem>? item,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Questionnaire(
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
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
      derivedFrom: derivedFrom
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.derivedFrom',
                ),
              )
              .toList() ??
          this.derivedFrom,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      experimental: experimental?.copyWith(
            objectPath: '$newObjectPath.experimental',
          ) ??
          this.experimental,
      subjectType: subjectType
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subjectType',
                ),
              )
              .toList() ??
          this.subjectType,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      publisher: publisher?.copyWith(
            objectPath: '$newObjectPath.publisher',
          ) ??
          this.publisher,
      contact: contact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contact',
                ),
              )
              .toList() ??
          this.contact,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      useContext: useContext
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.useContext',
                ),
              )
              .toList() ??
          this.useContext,
      jurisdiction: jurisdiction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.jurisdiction',
                ),
              )
              .toList() ??
          this.jurisdiction,
      purpose: purpose?.copyWith(
            objectPath: '$newObjectPath.purpose',
          ) ??
          this.purpose,
      copyright: copyright?.copyWith(
            objectPath: '$newObjectPath.copyright',
          ) ??
          this.copyright,
      approvalDate: approvalDate?.copyWith(
            objectPath: '$newObjectPath.approvalDate',
          ) ??
          this.approvalDate,
      lastReviewDate: lastReviewDate?.copyWith(
            objectPath: '$newObjectPath.lastReviewDate',
          ) ??
          this.lastReviewDate,
      effectivePeriod: effectivePeriod?.copyWith(
            objectPath: '$newObjectPath.effectivePeriod',
          ) ??
          this.effectivePeriod,
      code: code
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.code',
                ),
              )
              .toList() ??
          this.code,
      item: item
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.item',
                ),
              )
              .toList() ??
          this.item,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Questionnaire) {
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
      url,
      o.url,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      derivedFrom,
      o.derivedFrom,
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
      experimental,
      o.experimental,
    )) {
      return false;
    }
    if (!listEquals<FhirCode>(
      subjectType,
      o.subjectType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      approvalDate,
      o.approvalDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastReviewDate,
      o.lastReviewDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      effectivePeriod,
      o.effectivePeriod,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<QuestionnaireItem>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}

/// [QuestionnaireItem]
/// A particular question, question grouping or display text that is part
/// of the questionnaire.
class QuestionnaireItem extends BackboneElement {
  /// Primary constructor for
  /// [QuestionnaireItem]

  const QuestionnaireItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.linkId,
    this.definition,
    this.code,
    this.prefix,
    this.text,
    required this.type,
    this.enableWhen,
    this.enableBehavior,
    this.required_,
    this.repeats,
    this.readOnly,
    this.maxLength,
    this.answerValueSet,
    this.answerOption,
    this.initial,
    this.item,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Questionnaire.item',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory QuestionnaireItem.empty() => QuestionnaireItem(
        linkId: FhirString.empty(),
        type: QuestionnaireItemType.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Questionnaire.item';
    return QuestionnaireItem(
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
      linkId: JsonParser.parsePrimitive<FhirString>(
        json,
        'linkId',
        FhirString.fromJson,
        '$objectPath.linkId',
      )!,
      definition: JsonParser.parsePrimitive<FhirUri>(
        json,
        'definition',
        FhirUri.fromJson,
        '$objectPath.definition',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      prefix: JsonParser.parsePrimitive<FhirString>(
        json,
        'prefix',
        FhirString.fromJson,
        '$objectPath.prefix',
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
      ),
      type: JsonParser.parsePrimitive<QuestionnaireItemType>(
        json,
        'type',
        QuestionnaireItemType.fromJson,
        '$objectPath.type',
      )!,
      enableWhen: (json['enableWhen'] as List<dynamic>?)
          ?.map<QuestionnaireEnableWhen>(
            (v) => QuestionnaireEnableWhen.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.enableWhen',
              },
            ),
          )
          .toList(),
      enableBehavior: JsonParser.parsePrimitive<EnableWhenBehavior>(
        json,
        'enableBehavior',
        EnableWhenBehavior.fromJson,
        '$objectPath.enableBehavior',
      ),
      required_: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'required',
        FhirBoolean.fromJson,
        '$objectPath.required',
      ),
      repeats: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'repeats',
        FhirBoolean.fromJson,
        '$objectPath.repeats',
      ),
      readOnly: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'readOnly',
        FhirBoolean.fromJson,
        '$objectPath.readOnly',
      ),
      maxLength: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'maxLength',
        FhirInteger.fromJson,
        '$objectPath.maxLength',
      ),
      answerValueSet: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'answerValueSet',
        FhirCanonical.fromJson,
        '$objectPath.answerValueSet',
      ),
      answerOption: (json['answerOption'] as List<dynamic>?)
          ?.map<QuestionnaireAnswerOption>(
            (v) => QuestionnaireAnswerOption.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.answerOption',
              },
            ),
          )
          .toList(),
      initial: (json['initial'] as List<dynamic>?)
          ?.map<QuestionnaireInitial>(
            (v) => QuestionnaireInitial.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.initial',
              },
            ),
          )
          .toList(),
      item: (json['item'] as List<dynamic>?)
          ?.map<QuestionnaireItem>(
            (v) => QuestionnaireItem.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [QuestionnaireItem]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return QuestionnaireItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireItem';

  /// [linkId]
  /// An identifier that is unique within the Questionnaire allowing linkage
  /// to the equivalent item in a QuestionnaireResponse resource.
  final FhirString linkId;

  /// [definition]
  /// This element is a URI that refers to an
  /// [ElementDefinition](elementdefinition.html) that provides information
  /// about this item, including information that might otherwise be included
  /// in the instance of the Questionnaire resource. A detailed description
  /// of the construction of the URI is shown in Comments, below. If this
  /// element is present then the following element values MAY be derived
  /// from the Element Definition if the corresponding elements of this
  /// Questionnaire resource instance have no value:
  ///
  /// * code (ElementDefinition.code)
  /// * type (ElementDefinition.type)
  /// * required (ElementDefinition.min)
  /// * repeats (ElementDefinition.max)
  /// * maxLength (ElementDefinition.maxLength)
  /// * answerValueSet (ElementDefinition.binding)
  /// * options (ElementDefinition.binding).
  final FhirUri? definition;

  /// [code]
  /// A terminology code that corresponds to this group or question (e.g. a
  /// code from LOINC, which defines many questions and answers).
  final List<Coding>? code;

  /// [prefix]
  /// A short label for a particular group, question or set of display text
  /// within the questionnaire used for reference by the individual
  /// completing the questionnaire.
  final FhirString? prefix;

  /// [text]
  /// The name of a section, the text of a question or text content for a
  /// display item.
  final FhirString? text;

  /// [type]
  /// The type of questionnaire item this is - whether text for display, a
  /// grouping of other items or a particular type of data to be captured
  /// (string, integer, coded choice, etc.).
  final QuestionnaireItemType type;

  /// [enableWhen]
  /// A constraint indicating that this item should only be enabled
  /// (displayed/allow answers to be captured) when the specified condition
  /// is true.
  final List<QuestionnaireEnableWhen>? enableWhen;

  /// [enableBehavior]
  /// Controls how multiple enableWhen values are interpreted - whether all
  /// or any must be true.
  final EnableWhenBehavior? enableBehavior;

  /// [required_]
  /// An indication, if true, that the item must be present in a "completed"
  /// QuestionnaireResponse. If false, the item may be skipped when answering
  /// the questionnaire.
  final FhirBoolean? required_;

  /// [repeats]
  /// An indication, if true, that the item may occur multiple times in the
  /// response, collecting multiple answers for questions or multiple sets of
  /// answers for groups.
  final FhirBoolean? repeats;

  /// [readOnly]
  /// An indication, when true, that the value cannot be changed by a human
  /// respondent to the Questionnaire.
  final FhirBoolean? readOnly;

  /// [maxLength]
  /// The maximum number of characters that are permitted in the answer to be
  /// considered a "valid" QuestionnaireResponse.
  final FhirInteger? maxLength;

  /// [answerValueSet]
  /// A reference to a value set containing a list of codes representing
  /// permitted answers for a "choice" or "open-choice" question.
  final FhirCanonical? answerValueSet;

  /// [answerOption]
  /// One of the permitted answers for a "choice" or "open-choice" question.
  final List<QuestionnaireAnswerOption>? answerOption;

  /// [initial]
  /// One or more values that should be pre-populated in the answer when
  /// initially rendering the questionnaire for user input.
  final List<QuestionnaireInitial>? initial;

  /// [item]
  /// Text, questions and other groups to be nested beneath a question or
  /// group.
  final List<QuestionnaireItem>? item;
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
      'linkId',
      linkId,
    );
    addField(
      'definition',
      definition,
    );
    addField(
      'code',
      code,
    );
    addField(
      'prefix',
      prefix,
    );
    addField(
      'text',
      text,
    );
    addField(
      'type',
      type,
    );
    addField(
      'enableWhen',
      enableWhen,
    );
    addField(
      'enableBehavior',
      enableBehavior,
    );
    addField(
      'required',
      required_,
    );
    addField(
      'repeats',
      repeats,
    );
    addField(
      'readOnly',
      readOnly,
    );
    addField(
      'maxLength',
      maxLength,
    );
    addField(
      'answerValueSet',
      answerValueSet,
    );
    addField(
      'answerOption',
      answerOption,
    );
    addField(
      'initial',
      initial,
    );
    addField(
      'item',
      item,
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
      'linkId',
      'definition',
      'code',
      'prefix',
      'text',
      'type',
      'enableWhen',
      'enableBehavior',
      'required',
      'repeats',
      'readOnly',
      'maxLength',
      'answerValueSet',
      'answerOption',
      'initial',
      'item',
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
      case 'linkId':
        fields.add(linkId);
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'prefix':
        if (prefix != null) {
          fields.add(prefix!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'type':
        fields.add(type);
      case 'enableWhen':
        if (enableWhen != null) {
          fields.addAll(enableWhen!);
        }
      case 'enableBehavior':
        if (enableBehavior != null) {
          fields.add(enableBehavior!);
        }
      case 'required':
        if (required_ != null) {
          fields.add(required_!);
        }
      case 'repeats':
        if (repeats != null) {
          fields.add(repeats!);
        }
      case 'readOnly':
        if (readOnly != null) {
          fields.add(readOnly!);
        }
      case 'maxLength':
        if (maxLength != null) {
          fields.add(maxLength!);
        }
      case 'answerValueSet':
        if (answerValueSet != null) {
          fields.add(answerValueSet!);
        }
      case 'answerOption':
        if (answerOption != null) {
          fields.addAll(answerOption!);
        }
      case 'initial':
        if (initial != null) {
          fields.addAll(initial!);
        }
      case 'item':
        if (item != null) {
          fields.addAll(item!);
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'linkId':
        {
          if (child is FhirString) {
            return copyWith(linkId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definition':
        {
          if (child is FhirUri) {
            return copyWith(definition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is List<Coding>) {
            // Add all elements from passed list
            final newList = [...?code, ...child];
            return copyWith(code: newList);
          } else if (child is Coding) {
            // Add single element to existing list or create new list
            final newList = [...?code, child];
            return copyWith(code: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'prefix':
        {
          if (child is FhirString) {
            return copyWith(prefix: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is FhirString) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is QuestionnaireItemType) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'enableWhen':
        {
          if (child is List<QuestionnaireEnableWhen>) {
            // Add all elements from passed list
            final newList = [...?enableWhen, ...child];
            return copyWith(enableWhen: newList);
          } else if (child is QuestionnaireEnableWhen) {
            // Add single element to existing list or create new list
            final newList = [...?enableWhen, child];
            return copyWith(enableWhen: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'enableBehavior':
        {
          if (child is EnableWhenBehavior) {
            return copyWith(enableBehavior: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'required':
        {
          if (child is FhirBoolean) {
            return copyWith(required_: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'repeats':
        {
          if (child is FhirBoolean) {
            return copyWith(repeats: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'readOnly':
        {
          if (child is FhirBoolean) {
            return copyWith(readOnly: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxLength':
        {
          if (child is FhirInteger) {
            return copyWith(maxLength: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerValueSet':
        {
          if (child is FhirCanonical) {
            return copyWith(answerValueSet: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerOption':
        {
          if (child is List<QuestionnaireAnswerOption>) {
            // Add all elements from passed list
            final newList = [...?answerOption, ...child];
            return copyWith(answerOption: newList);
          } else if (child is QuestionnaireAnswerOption) {
            // Add single element to existing list or create new list
            final newList = [...?answerOption, child];
            return copyWith(answerOption: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'initial':
        {
          if (child is List<QuestionnaireInitial>) {
            // Add all elements from passed list
            final newList = [...?initial, ...child];
            return copyWith(initial: newList);
          } else if (child is QuestionnaireInitial) {
            // Add single element to existing list or create new list
            final newList = [...?initial, child];
            return copyWith(initial: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'item':
        {
          if (child is List<QuestionnaireItem>) {
            // Add all elements from passed list
            final newList = [...?item, ...child];
            return copyWith(item: newList);
          } else if (child is QuestionnaireItem) {
            // Add single element to existing list or create new list
            final newList = [...?item, child];
            return copyWith(item: newList);
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
      case 'linkId':
        return ['FhirString'];
      case 'definition':
        return ['FhirUri'];
      case 'code':
        return ['Coding'];
      case 'prefix':
        return ['FhirString'];
      case 'text':
        return ['FhirString'];
      case 'type':
        return ['FhirCode'];
      case 'enableWhen':
        return ['QuestionnaireEnableWhen'];
      case 'enableBehavior':
        return ['FhirCode'];
      case 'required':
        return ['FhirBoolean'];
      case 'repeats':
        return ['FhirBoolean'];
      case 'readOnly':
        return ['FhirBoolean'];
      case 'maxLength':
        return ['FhirInteger'];
      case 'answerValueSet':
        return ['FhirCanonical'];
      case 'answerOption':
        return ['QuestionnaireAnswerOption'];
      case 'initial':
        return ['QuestionnaireInitial'];
      case 'item':
        return ['QuestionnaireItem'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [QuestionnaireItem]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  QuestionnaireItem createProperty(
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
      case 'linkId':
        {
          return copyWith(
            linkId: FhirString.empty(),
          );
        }
      case 'definition':
        {
          return copyWith(
            definition: FhirUri.empty(),
          );
        }
      case 'code':
        {
          return copyWith(
            code: <Coding>[],
          );
        }
      case 'prefix':
        {
          return copyWith(
            prefix: FhirString.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: FhirString.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: QuestionnaireItemType.empty(),
          );
        }
      case 'enableWhen':
        {
          return copyWith(
            enableWhen: <QuestionnaireEnableWhen>[],
          );
        }
      case 'enableBehavior':
        {
          return copyWith(
            enableBehavior: EnableWhenBehavior.empty(),
          );
        }
      case 'required':
        {
          return copyWith(
            required_: FhirBoolean.empty(),
          );
        }
      case 'repeats':
        {
          return copyWith(
            repeats: FhirBoolean.empty(),
          );
        }
      case 'readOnly':
        {
          return copyWith(
            readOnly: FhirBoolean.empty(),
          );
        }
      case 'maxLength':
        {
          return copyWith(
            maxLength: FhirInteger.empty(),
          );
        }
      case 'answerValueSet':
        {
          return copyWith(
            answerValueSet: FhirCanonical.empty(),
          );
        }
      case 'answerOption':
        {
          return copyWith(
            answerOption: <QuestionnaireAnswerOption>[],
          );
        }
      case 'initial':
        {
          return copyWith(
            initial: <QuestionnaireInitial>[],
          );
        }
      case 'item':
        {
          return copyWith(
            item: <QuestionnaireItem>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  QuestionnaireItem clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool definition = false,
    bool code = false,
    bool prefix = false,
    bool text = false,
    bool enableWhen = false,
    bool enableBehavior = false,
    bool required_ = false,
    bool repeats = false,
    bool readOnly = false,
    bool maxLength = false,
    bool answerValueSet = false,
    bool answerOption = false,
    bool initial = false,
    bool item = false,
  }) {
    return QuestionnaireItem(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      linkId: linkId,
      definition: definition ? null : this.definition,
      code: code ? null : this.code,
      prefix: prefix ? null : this.prefix,
      text: text ? null : this.text,
      type: type,
      enableWhen: enableWhen ? null : this.enableWhen,
      enableBehavior: enableBehavior ? null : this.enableBehavior,
      required_: required_ ? null : this.required_,
      repeats: repeats ? null : this.repeats,
      readOnly: readOnly ? null : this.readOnly,
      maxLength: maxLength ? null : this.maxLength,
      answerValueSet: answerValueSet ? null : this.answerValueSet,
      answerOption: answerOption ? null : this.answerOption,
      initial: initial ? null : this.initial,
      item: item ? null : this.item,
    );
  }

  @override
  QuestionnaireItem clone() => throw UnimplementedError();
  @override
  QuestionnaireItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    FhirUri? definition,
    List<Coding>? code,
    FhirString? prefix,
    FhirString? text,
    QuestionnaireItemType? type,
    List<QuestionnaireEnableWhen>? enableWhen,
    EnableWhenBehavior? enableBehavior,
    FhirBoolean? required_,
    FhirBoolean? repeats,
    FhirBoolean? readOnly,
    FhirInteger? maxLength,
    FhirCanonical? answerValueSet,
    List<QuestionnaireAnswerOption>? answerOption,
    List<QuestionnaireInitial>? initial,
    List<QuestionnaireItem>? item,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return QuestionnaireItem(
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
      linkId: linkId?.copyWith(
            objectPath: '$newObjectPath.linkId',
          ) ??
          this.linkId,
      definition: definition?.copyWith(
            objectPath: '$newObjectPath.definition',
          ) ??
          this.definition,
      code: code
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.code',
                ),
              )
              .toList() ??
          this.code,
      prefix: prefix?.copyWith(
            objectPath: '$newObjectPath.prefix',
          ) ??
          this.prefix,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      enableWhen: enableWhen
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.enableWhen',
                ),
              )
              .toList() ??
          this.enableWhen,
      enableBehavior: enableBehavior?.copyWith(
            objectPath: '$newObjectPath.enableBehavior',
          ) ??
          this.enableBehavior,
      required_: required_?.copyWith(
            objectPath: '$newObjectPath.required',
          ) ??
          this.required_,
      repeats: repeats?.copyWith(
            objectPath: '$newObjectPath.repeats',
          ) ??
          this.repeats,
      readOnly: readOnly?.copyWith(
            objectPath: '$newObjectPath.readOnly',
          ) ??
          this.readOnly,
      maxLength: maxLength?.copyWith(
            objectPath: '$newObjectPath.maxLength',
          ) ??
          this.maxLength,
      answerValueSet: answerValueSet?.copyWith(
            objectPath: '$newObjectPath.answerValueSet',
          ) ??
          this.answerValueSet,
      answerOption: answerOption
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.answerOption',
                ),
              )
              .toList() ??
          this.answerOption,
      initial: initial
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.initial',
                ),
              )
              .toList() ??
          this.initial,
      item: item
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.item',
                ),
              )
              .toList() ??
          this.item,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! QuestionnaireItem) {
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
      linkId,
      o.linkId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definition,
      o.definition,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      prefix,
      o.prefix,
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<QuestionnaireEnableWhen>(
      enableWhen,
      o.enableWhen,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      enableBehavior,
      o.enableBehavior,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      required_,
      o.required_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      repeats,
      o.repeats,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      readOnly,
      o.readOnly,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxLength,
      o.maxLength,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      answerValueSet,
      o.answerValueSet,
    )) {
      return false;
    }
    if (!listEquals<QuestionnaireAnswerOption>(
      answerOption,
      o.answerOption,
    )) {
      return false;
    }
    if (!listEquals<QuestionnaireInitial>(
      initial,
      o.initial,
    )) {
      return false;
    }
    if (!listEquals<QuestionnaireItem>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}

/// [QuestionnaireEnableWhen]
/// A constraint indicating that this item should only be enabled
/// (displayed/allow answers to be captured) when the specified condition
/// is true.
class QuestionnaireEnableWhen extends BackboneElement {
  /// Primary constructor for
  /// [QuestionnaireEnableWhen]

  const QuestionnaireEnableWhen({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.question,
    required this.operator_,
    required this.answerX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Questionnaire.item.enableWhen',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory QuestionnaireEnableWhen.empty() => QuestionnaireEnableWhen(
        question: FhirString.empty(),
        operator_: QuestionnaireItemOperator.values.first,
        answerX: FhirBoolean.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireEnableWhen.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Questionnaire.item.enableWhen';
    return QuestionnaireEnableWhen(
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
      question: JsonParser.parsePrimitive<FhirString>(
        json,
        'question',
        FhirString.fromJson,
        '$objectPath.question',
      )!,
      operator_: JsonParser.parsePrimitive<QuestionnaireItemOperator>(
        json,
        'operator',
        QuestionnaireItemOperator.fromJson,
        '$objectPath.operator',
      )!,
      answerX: JsonParser.parsePolymorphic<AnswerXQuestionnaireEnableWhen>(
        json,
        {
          'answerBoolean': FhirBoolean.fromJson,
          'answerDecimal': FhirDecimal.fromJson,
          'answerInteger': FhirInteger.fromJson,
          'answerDate': FhirDate.fromJson,
          'answerDateTime': FhirDateTime.fromJson,
          'answerTime': FhirTime.fromJson,
          'answerString': FhirString.fromJson,
          'answerCoding': Coding.fromJson,
          'answerQuantity': Quantity.fromJson,
          'answerReference': Reference.fromJson,
        },
        objectPath,
      )!,
    );
  }

  /// Deserialize [QuestionnaireEnableWhen]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireEnableWhen.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireEnableWhen.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireEnableWhen.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireEnableWhen '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireEnableWhen]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireEnableWhen.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return QuestionnaireEnableWhen.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireEnableWhen';

  /// [question]
  /// The linkId for the question whose answer (or lack of answer) governs
  /// whether this item is enabled.
  final FhirString question;

  /// [operator_]
  /// Specifies the criteria by which the question is enabled.
  final QuestionnaireItemOperator operator_;

  /// [answerX]
  /// A value that the referenced question is tested using the specified
  /// operator in order for the item to be enabled.
  final AnswerXQuestionnaireEnableWhen answerX;

  /// Getter for [answerBoolean] as a FhirBoolean
  FhirBoolean? get answerBoolean => answerX.isAs<FhirBoolean>();

  /// Getter for [answerDecimal] as a FhirDecimal
  FhirDecimal? get answerDecimal => answerX.isAs<FhirDecimal>();

  /// Getter for [answerInteger] as a FhirInteger
  FhirInteger? get answerInteger => answerX.isAs<FhirInteger>();

  /// Getter for [answerDate] as a FhirDate
  FhirDate? get answerDate => answerX.isAs<FhirDate>();

  /// Getter for [answerDateTime] as a FhirDateTime
  FhirDateTime? get answerDateTime => answerX.isAs<FhirDateTime>();

  /// Getter for [answerTime] as a FhirTime
  FhirTime? get answerTime => answerX.isAs<FhirTime>();

  /// Getter for [answerString] as a FhirString
  FhirString? get answerString => answerX.isAs<FhirString>();

  /// Getter for [answerCoding] as a Coding
  Coding? get answerCoding => answerX.isAs<Coding>();

  /// Getter for [answerQuantity] as a Quantity
  Quantity? get answerQuantity => answerX.isAs<Quantity>();

  /// Getter for [answerReference] as a Reference
  Reference? get answerReference => answerX.isAs<Reference>();
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
      'question',
      question,
    );
    addField(
      'operator',
      operator_,
    );
    final answerXFhirType = answerX.fhirType;
    addField(
      'answer${answerXFhirType.capitalize()}',
      answerX,
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
      'question',
      'operator',
      'answerX',
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
      case 'question':
        fields.add(question);
      case 'operator':
        fields.add(operator_);
      case 'answer':
        fields.add(answerX);
      case 'answerX':
        fields.add(answerX);
      case 'answerBoolean':
        if (answerX is FhirBoolean) {
          fields.add(answerX);
        }
      case 'answerDecimal':
        if (answerX is FhirDecimal) {
          fields.add(answerX);
        }
      case 'answerInteger':
        if (answerX is FhirInteger) {
          fields.add(answerX);
        }
      case 'answerDate':
        if (answerX is FhirDate) {
          fields.add(answerX);
        }
      case 'answerDateTime':
        if (answerX is FhirDateTime) {
          fields.add(answerX);
        }
      case 'answerTime':
        if (answerX is FhirTime) {
          fields.add(answerX);
        }
      case 'answerString':
        if (answerX is FhirString) {
          fields.add(answerX);
        }
      case 'answerCoding':
        if (answerX is Coding) {
          fields.add(answerX);
        }
      case 'answerQuantity':
        if (answerX is Quantity) {
          fields.add(answerX);
        }
      case 'answerReference':
        if (answerX is Reference) {
          fields.add(answerX);
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'question':
        {
          if (child is FhirString) {
            return copyWith(question: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'operator':
        {
          if (child is QuestionnaireItemOperator) {
            return copyWith(operator_: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerX':
        {
          if (child is AnswerXQuestionnaireEnableWhen) {
            return copyWith(answerX: child);
          } else {
            if (child is FhirBoolean) {
              return copyWith(answerX: child);
            }
            if (child is FhirDecimal) {
              return copyWith(answerX: child);
            }
            if (child is FhirInteger) {
              return copyWith(answerX: child);
            }
            if (child is FhirDate) {
              return copyWith(answerX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(answerX: child);
            }
            if (child is FhirTime) {
              return copyWith(answerX: child);
            }
            if (child is FhirString) {
              return copyWith(answerX: child);
            }
            if (child is Coding) {
              return copyWith(answerX: child);
            }
            if (child is Quantity) {
              return copyWith(answerX: child);
            }
            if (child is Reference) {
              return copyWith(answerX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'answerFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(answerX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(answerX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(answerX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(answerX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(answerX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(answerX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerFhirString':
        {
          if (child is FhirString) {
            return copyWith(answerX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerCoding':
        {
          if (child is Coding) {
            return copyWith(answerX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerQuantity':
        {
          if (child is Quantity) {
            return copyWith(answerX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerReference':
        {
          if (child is Reference) {
            return copyWith(answerX: child);
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
      case 'question':
        return ['FhirString'];
      case 'operator':
        return ['FhirCode'];
      case 'answer':
      case 'answerX':
        return [
          'FhirBoolean',
          'FhirDecimal',
          'FhirInteger',
          'FhirDate',
          'FhirDateTime',
          'FhirTime',
          'FhirString',
          'Coding',
          'Quantity',
          'Reference',
        ];
      case 'answerBoolean':
        return ['FhirBoolean'];
      case 'answerDecimal':
        return ['FhirDecimal'];
      case 'answerInteger':
        return ['FhirInteger'];
      case 'answerDate':
        return ['FhirDate'];
      case 'answerDateTime':
        return ['FhirDateTime'];
      case 'answerTime':
        return ['FhirTime'];
      case 'answerString':
        return ['FhirString'];
      case 'answerCoding':
        return ['Coding'];
      case 'answerQuantity':
        return ['Quantity'];
      case 'answerReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [QuestionnaireEnableWhen]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  QuestionnaireEnableWhen createProperty(
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
      case 'question':
        {
          return copyWith(
            question: FhirString.empty(),
          );
        }
      case 'operator':
        {
          return copyWith(
            operator_: QuestionnaireItemOperator.empty(),
          );
        }
      case 'answer':
      case 'answerX':
      case 'answerBoolean':
        {
          return copyWith(
            answerX: FhirBoolean.empty(),
          );
        }
      case 'answerDecimal':
        {
          return copyWith(
            answerX: FhirDecimal.empty(),
          );
        }
      case 'answerInteger':
        {
          return copyWith(
            answerX: FhirInteger.empty(),
          );
        }
      case 'answerDate':
        {
          return copyWith(
            answerX: FhirDate.empty(),
          );
        }
      case 'answerDateTime':
        {
          return copyWith(
            answerX: FhirDateTime.empty(),
          );
        }
      case 'answerTime':
        {
          return copyWith(
            answerX: FhirTime.empty(),
          );
        }
      case 'answerString':
        {
          return copyWith(
            answerX: FhirString.empty(),
          );
        }
      case 'answerCoding':
        {
          return copyWith(
            answerX: Coding.empty(),
          );
        }
      case 'answerQuantity':
        {
          return copyWith(
            answerX: Quantity.empty(),
          );
        }
      case 'answerReference':
        {
          return copyWith(
            answerX: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  QuestionnaireEnableWhen clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return QuestionnaireEnableWhen(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      question: question,
      operator_: operator_,
      answerX: answerX,
    );
  }

  @override
  QuestionnaireEnableWhen clone() => throw UnimplementedError();
  @override
  QuestionnaireEnableWhen copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? question,
    QuestionnaireItemOperator? operator_,
    AnswerXQuestionnaireEnableWhen? answerX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return QuestionnaireEnableWhen(
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
      question: question?.copyWith(
            objectPath: '$newObjectPath.question',
          ) ??
          this.question,
      operator_: operator_?.copyWith(
            objectPath: '$newObjectPath.operator',
          ) ??
          this.operator_,
      answerX: answerX?.copyWith(
            objectPath: '$newObjectPath.answerX',
          ) as AnswerXQuestionnaireEnableWhen? ??
          this.answerX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! QuestionnaireEnableWhen) {
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
      question,
      o.question,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operator_,
      o.operator_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      answerX,
      o.answerX,
    )) {
      return false;
    }
    return true;
  }
}

/// [QuestionnaireAnswerOption]
/// One of the permitted answers for a "choice" or "open-choice" question.
class QuestionnaireAnswerOption extends BackboneElement {
  /// Primary constructor for
  /// [QuestionnaireAnswerOption]

  const QuestionnaireAnswerOption({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueX,
    this.initialSelected,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Questionnaire.item.answerOption',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory QuestionnaireAnswerOption.empty() => QuestionnaireAnswerOption(
        valueX: FhirInteger.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireAnswerOption.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Questionnaire.item.answerOption';
    return QuestionnaireAnswerOption(
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
      valueX: JsonParser.parsePolymorphic<ValueXQuestionnaireAnswerOption>(
        json,
        {
          'valueInteger': FhirInteger.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueTime': FhirTime.fromJson,
          'valueString': FhirString.fromJson,
          'valueCoding': Coding.fromJson,
          'valueReference': Reference.fromJson,
        },
        objectPath,
      )!,
      initialSelected: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'initialSelected',
        FhirBoolean.fromJson,
        '$objectPath.initialSelected',
      ),
    );
  }

  /// Deserialize [QuestionnaireAnswerOption]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireAnswerOption.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireAnswerOption.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireAnswerOption.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireAnswerOption '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireAnswerOption]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireAnswerOption.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return QuestionnaireAnswerOption.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireAnswerOption';

  /// [valueX]
  /// A potential answer that's allowed as the answer to this question.
  final ValueXQuestionnaireAnswerOption valueX;

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX.isAs<FhirInteger>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX.isAs<FhirDate>();

  /// Getter for [valueTime] as a FhirTime
  FhirTime? get valueTime => valueX.isAs<FhirTime>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueCoding] as a Coding
  Coding? get valueCoding => valueX.isAs<Coding>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX.isAs<Reference>();

  /// [initialSelected]
  /// Indicates whether the answer value is selected when the list of
  /// possible answers is initially shown.
  final FhirBoolean? initialSelected;
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
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
    );

    addField(
      'initialSelected',
      initialSelected,
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
      'valueX',
      'initialSelected',
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
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX);
        }
      case 'valueDate':
        if (valueX is FhirDate) {
          fields.add(valueX);
        }
      case 'valueTime':
        if (valueX is FhirTime) {
          fields.add(valueX);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueCoding':
        if (valueX is Coding) {
          fields.add(valueX);
        }
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX);
        }
      case 'initialSelected':
        if (initialSelected != null) {
          fields.add(initialSelected!);
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueX':
        {
          if (child is ValueXQuestionnaireAnswerOption) {
            return copyWith(valueX: child);
          } else {
            if (child is FhirInteger) {
              return copyWith(valueX: child);
            }
            if (child is FhirDate) {
              return copyWith(valueX: child);
            }
            if (child is FhirTime) {
              return copyWith(valueX: child);
            }
            if (child is FhirString) {
              return copyWith(valueX: child);
            }
            if (child is Coding) {
              return copyWith(valueX: child);
            }
            if (child is Reference) {
              return copyWith(valueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirString':
        {
          if (child is FhirString) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCoding':
        {
          if (child is Coding) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is Reference) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'initialSelected':
        {
          if (child is FhirBoolean) {
            return copyWith(initialSelected: child);
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
      case 'value':
      case 'valueX':
        return [
          'FhirInteger',
          'FhirDate',
          'FhirTime',
          'FhirString',
          'Coding',
          'Reference',
        ];
      case 'valueInteger':
        return ['FhirInteger'];
      case 'valueDate':
        return ['FhirDate'];
      case 'valueTime':
        return ['FhirTime'];
      case 'valueString':
        return ['FhirString'];
      case 'valueCoding':
        return ['Coding'];
      case 'valueReference':
        return ['Reference'];
      case 'initialSelected':
        return ['FhirBoolean'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [QuestionnaireAnswerOption]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  QuestionnaireAnswerOption createProperty(
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
      case 'value':
      case 'valueX':
      case 'valueInteger':
        {
          return copyWith(
            valueX: FhirInteger.empty(),
          );
        }
      case 'valueDate':
        {
          return copyWith(
            valueX: FhirDate.empty(),
          );
        }
      case 'valueTime':
        {
          return copyWith(
            valueX: FhirTime.empty(),
          );
        }
      case 'valueString':
        {
          return copyWith(
            valueX: FhirString.empty(),
          );
        }
      case 'valueCoding':
        {
          return copyWith(
            valueX: Coding.empty(),
          );
        }
      case 'valueReference':
        {
          return copyWith(
            valueX: Reference.empty(),
          );
        }
      case 'initialSelected':
        {
          return copyWith(
            initialSelected: FhirBoolean.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  QuestionnaireAnswerOption clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool initialSelected = false,
  }) {
    return QuestionnaireAnswerOption(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      valueX: valueX,
      initialSelected: initialSelected ? null : this.initialSelected,
    );
  }

  @override
  QuestionnaireAnswerOption clone() => throw UnimplementedError();
  @override
  QuestionnaireAnswerOption copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ValueXQuestionnaireAnswerOption? valueX,
    FhirBoolean? initialSelected,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return QuestionnaireAnswerOption(
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
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXQuestionnaireAnswerOption? ??
          this.valueX,
      initialSelected: initialSelected?.copyWith(
            objectPath: '$newObjectPath.initialSelected',
          ) ??
          this.initialSelected,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! QuestionnaireAnswerOption) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      initialSelected,
      o.initialSelected,
    )) {
      return false;
    }
    return true;
  }
}

/// [QuestionnaireInitial]
/// One or more values that should be pre-populated in the answer when
/// initially rendering the questionnaire for user input.
class QuestionnaireInitial extends BackboneElement {
  /// Primary constructor for
  /// [QuestionnaireInitial]

  const QuestionnaireInitial({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Questionnaire.item.initial',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory QuestionnaireInitial.empty() => QuestionnaireInitial(
        valueX: FhirBoolean.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireInitial.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Questionnaire.item.initial';
    return QuestionnaireInitial(
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
      valueX: JsonParser.parsePolymorphic<ValueXQuestionnaireInitial>(
        json,
        {
          'valueBoolean': FhirBoolean.fromJson,
          'valueDecimal': FhirDecimal.fromJson,
          'valueInteger': FhirInteger.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueDateTime': FhirDateTime.fromJson,
          'valueTime': FhirTime.fromJson,
          'valueString': FhirString.fromJson,
          'valueUri': FhirUri.fromJson,
          'valueAttachment': Attachment.fromJson,
          'valueCoding': Coding.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueReference': Reference.fromJson,
        },
        objectPath,
      )!,
    );
  }

  /// Deserialize [QuestionnaireInitial]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireInitial.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireInitial.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireInitial.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireInitial '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireInitial]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireInitial.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return QuestionnaireInitial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireInitial';

  /// [valueX]
  /// The actual value to for an initial answer.
  final ValueXQuestionnaireInitial valueX;

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueDecimal] as a FhirDecimal
  FhirDecimal? get valueDecimal => valueX.isAs<FhirDecimal>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX.isAs<FhirInteger>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX.isAs<FhirDate>();

  /// Getter for [valueDateTime] as a FhirDateTime
  FhirDateTime? get valueDateTime => valueX.isAs<FhirDateTime>();

  /// Getter for [valueTime] as a FhirTime
  FhirTime? get valueTime => valueX.isAs<FhirTime>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueUri] as a FhirUri
  FhirUri? get valueUri => valueX.isAs<FhirUri>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX.isAs<Attachment>();

  /// Getter for [valueCoding] as a Coding
  Coding? get valueCoding => valueX.isAs<Coding>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX.isAs<Reference>();
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
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
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
      'valueX',
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
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimal) {
          fields.add(valueX);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX);
        }
      case 'valueDate':
        if (valueX is FhirDate) {
          fields.add(valueX);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTime) {
          fields.add(valueX);
        }
      case 'valueTime':
        if (valueX is FhirTime) {
          fields.add(valueX);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueUri':
        if (valueX is FhirUri) {
          fields.add(valueX);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX);
        }
      case 'valueCoding':
        if (valueX is Coding) {
          fields.add(valueX);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX);
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueX':
        {
          if (child is ValueXQuestionnaireInitial) {
            return copyWith(valueX: child);
          } else {
            if (child is FhirBoolean) {
              return copyWith(valueX: child);
            }
            if (child is FhirDecimal) {
              return copyWith(valueX: child);
            }
            if (child is FhirInteger) {
              return copyWith(valueX: child);
            }
            if (child is FhirDate) {
              return copyWith(valueX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(valueX: child);
            }
            if (child is FhirTime) {
              return copyWith(valueX: child);
            }
            if (child is FhirString) {
              return copyWith(valueX: child);
            }
            if (child is FhirUri) {
              return copyWith(valueX: child);
            }
            if (child is Attachment) {
              return copyWith(valueX: child);
            }
            if (child is Coding) {
              return copyWith(valueX: child);
            }
            if (child is Quantity) {
              return copyWith(valueX: child);
            }
            if (child is Reference) {
              return copyWith(valueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirString':
        {
          if (child is FhirString) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is Attachment) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCoding':
        {
          if (child is Coding) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is Quantity) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is Reference) {
            return copyWith(valueX: child);
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
      case 'value':
      case 'valueX':
        return [
          'FhirBoolean',
          'FhirDecimal',
          'FhirInteger',
          'FhirDate',
          'FhirDateTime',
          'FhirTime',
          'FhirString',
          'FhirUri',
          'Attachment',
          'Coding',
          'Quantity',
          'Reference',
        ];
      case 'valueBoolean':
        return ['FhirBoolean'];
      case 'valueDecimal':
        return ['FhirDecimal'];
      case 'valueInteger':
        return ['FhirInteger'];
      case 'valueDate':
        return ['FhirDate'];
      case 'valueDateTime':
        return ['FhirDateTime'];
      case 'valueTime':
        return ['FhirTime'];
      case 'valueString':
        return ['FhirString'];
      case 'valueUri':
        return ['FhirUri'];
      case 'valueAttachment':
        return ['Attachment'];
      case 'valueCoding':
        return ['Coding'];
      case 'valueQuantity':
        return ['Quantity'];
      case 'valueReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [QuestionnaireInitial]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  QuestionnaireInitial createProperty(
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
      case 'value':
      case 'valueX':
      case 'valueBoolean':
        {
          return copyWith(
            valueX: FhirBoolean.empty(),
          );
        }
      case 'valueDecimal':
        {
          return copyWith(
            valueX: FhirDecimal.empty(),
          );
        }
      case 'valueInteger':
        {
          return copyWith(
            valueX: FhirInteger.empty(),
          );
        }
      case 'valueDate':
        {
          return copyWith(
            valueX: FhirDate.empty(),
          );
        }
      case 'valueDateTime':
        {
          return copyWith(
            valueX: FhirDateTime.empty(),
          );
        }
      case 'valueTime':
        {
          return copyWith(
            valueX: FhirTime.empty(),
          );
        }
      case 'valueString':
        {
          return copyWith(
            valueX: FhirString.empty(),
          );
        }
      case 'valueUri':
        {
          return copyWith(
            valueX: FhirUri.empty(),
          );
        }
      case 'valueAttachment':
        {
          return copyWith(
            valueX: Attachment.empty(),
          );
        }
      case 'valueCoding':
        {
          return copyWith(
            valueX: Coding.empty(),
          );
        }
      case 'valueQuantity':
        {
          return copyWith(
            valueX: Quantity.empty(),
          );
        }
      case 'valueReference':
        {
          return copyWith(
            valueX: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  QuestionnaireInitial clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return QuestionnaireInitial(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      valueX: valueX,
    );
  }

  @override
  QuestionnaireInitial clone() => throw UnimplementedError();
  @override
  QuestionnaireInitial copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ValueXQuestionnaireInitial? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return QuestionnaireInitial(
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
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXQuestionnaireInitial? ??
          this.valueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! QuestionnaireInitial) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
