import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        Questionnaire,
        QuestionnaireAnswerOption,
        QuestionnaireEnableWhen,
        QuestionnaireInitial,
        QuestionnaireItem,
        R4ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [QuestionnaireBuilder]
/// A structured set of questions intended to guide the collection of
/// answers from end-users. Questionnaires provide detailed control over
/// order, presentation, phraseology and grouping to allow coherent,
/// consistent data collection.
class QuestionnaireBuilder extends CanonicalResourceBuilder {
  /// Primary constructor for
  /// [QuestionnaireBuilder]

  QuestionnaireBuilder({
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
    super.status,
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
  /// For Builder classes, no fields are required
  factory QuestionnaireBuilder.empty() => QuestionnaireBuilder(
        status: PublicationStatusBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Questionnaire';
    return QuestionnaireBuilder(
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
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
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
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      derivedFrom: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'derivedFrom',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.derivedFrom',
      ),
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      experimental: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'experimental',
        FhirBooleanBuilder.fromJson,
        '$objectPath.experimental',
      ),
      subjectType: JsonParser.parsePrimitiveList<FhirCodeBuilder>(
        json,
        'subjectType',
        FhirCodeBuilder.fromJson,
        '$objectPath.subjectType',
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      publisher: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'publisher',
        FhirStringBuilder.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContextBuilder>(
            (v) => UsageContextBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.jurisdiction',
              },
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'purpose',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.purpose',
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'copyright',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.copyright',
      ),
      approvalDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'approvalDate',
        FhirDateBuilder.fromJson,
        '$objectPath.approvalDate',
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'lastReviewDate',
        FhirDateBuilder.fromJson,
        '$objectPath.lastReviewDate',
      ),
      effectivePeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'effectivePeriod',
        PeriodBuilder.fromJson,
        '$objectPath.effectivePeriod',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      item: (json['item'] as List<dynamic>?)
          ?.map<QuestionnaireItemBuilder>(
            (v) => QuestionnaireItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [QuestionnaireBuilder]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return QuestionnaireBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [name]
  /// A natural language name identifying the questionnaire. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the questionnaire.
  FhirStringBuilder? title;

  /// [derivedFrom]
  /// The URL of a Questionnaire that this Questionnaire is based on.
  List<FhirCanonicalBuilder>? derivedFrom;

  /// [subjectType]
  /// The types of subjects that can be the subject of responses created for
  /// the questionnaire.
  List<FhirCodeBuilder>? subjectType;

  /// [purpose]
  /// Explanation of why this questionnaire is needed and why it has been
  /// designed as it has.
  FhirMarkdownBuilder? purpose;

  /// [copyright]
  /// A copyright statement relating to the questionnaire and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the questionnaire.
  FhirMarkdownBuilder? copyright;

  /// [approvalDate]
  /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  FhirDateBuilder? approvalDate;

  /// [lastReviewDate]
  /// The date on which the resource content was last reviewed. Review
  /// happens periodically after approval but does not change the original
  /// approval date.
  FhirDateBuilder? lastReviewDate;

  /// [effectivePeriod]
  /// The period during which the questionnaire content was or is planned to
  /// be in active use.
  PeriodBuilder? effectivePeriod;

  /// [code]
  /// An identifier for this question or group of questions in a particular
  /// terminology such as LOINC.
  List<CodingBuilder>? code;

  /// [item]
  /// A particular question, question grouping or display text that is part
  /// of the questionnaire.
  List<QuestionnaireItemBuilder>? item;

  /// Converts a [QuestionnaireBuilder]
  /// to [Questionnaire]
  @override
  Questionnaire build() => Questionnaire.fromJson(toJson());

  /// Converts a [QuestionnaireBuilder]
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
    addField('url', url);
    addField('identifier', identifier);
    addField('version', version);
    addField('name', name);
    addField('title', title);
    addField('derivedFrom', derivedFrom);
    addField('status', status);
    addField('experimental', experimental);
    addField('subjectType', subjectType);
    addField('date', date);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('description', description);
    addField('useContext', useContext);
    addField('jurisdiction', jurisdiction);
    addField('purpose', purpose);
    addField('copyright', copyright);
    addField('approvalDate', approvalDate);
    addField('lastReviewDate', lastReviewDate);
    addField('effectivePeriod', effectivePeriod);
    addField('code', code);
    addField('item', item);
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
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                title = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'derivedFrom':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            derivedFrom = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            derivedFrom = [
              ...(derivedFrom ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCanonicalBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCanonicalBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              derivedFrom = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                derivedFrom = [
                  ...(derivedFrom ?? []),
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
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PublicationStatusBuilder(stringValue);
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
      case 'experimental':
        {
          if (child is FhirBooleanBuilder) {
            experimental = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                experimental = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjectType':
        {
          if (child is List<FhirCodeBuilder>) {
            // Replace or create new list
            subjectType = child;
            return;
          } else if (child is FhirCodeBuilder) {
            // Add single element to existing list or create new list
            subjectType = [
              ...(subjectType ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCodeBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCodeBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              subjectType = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                subjectType = [
                  ...(subjectType ?? []),
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
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'publisher':
        {
          if (child is FhirStringBuilder) {
            publisher = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                publisher = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contact':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            contact = [
              ...(contact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
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
      case 'useContext':
        {
          if (child is List<UsageContextBuilder>) {
            // Replace or create new list
            useContext = child;
            return;
          } else if (child is UsageContextBuilder) {
            // Add single element to existing list or create new list
            useContext = [
              ...(useContext ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            jurisdiction = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            jurisdiction = [
              ...(jurisdiction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'purpose':
        {
          if (child is FhirMarkdownBuilder) {
            purpose = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                purpose = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'copyright':
        {
          if (child is FhirMarkdownBuilder) {
            copyright = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                copyright = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'approvalDate':
        {
          if (child is FhirDateBuilder) {
            approvalDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                approvalDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lastReviewDate':
        {
          if (child is FhirDateBuilder) {
            lastReviewDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                lastReviewDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effectivePeriod':
        {
          if (child is PeriodBuilder) {
            effectivePeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            code = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            code = [
              ...(code ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'item':
        {
          if (child is List<QuestionnaireItemBuilder>) {
            // Replace or create new list
            item = child;
            return;
          } else if (child is QuestionnaireItemBuilder) {
            // Add single element to existing list or create new list
            item = [
              ...(item ?? []),
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
      case 'url':
        return ['FhirUriBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'derivedFrom':
        return ['FhirCanonicalBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'experimental':
        return ['FhirBooleanBuilder'];
      case 'subjectType':
        return ['FhirCodeBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'publisher':
        return ['FhirStringBuilder'];
      case 'contact':
        return ['ContactDetailBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'useContext':
        return ['UsageContextBuilder'];
      case 'jurisdiction':
        return ['CodeableConceptBuilder'];
      case 'purpose':
        return ['FhirMarkdownBuilder'];
      case 'copyright':
        return ['FhirMarkdownBuilder'];
      case 'approvalDate':
        return ['FhirDateBuilder'];
      case 'lastReviewDate':
        return ['FhirDateBuilder'];
      case 'effectivePeriod':
        return ['PeriodBuilder'];
      case 'code':
        return ['CodingBuilder'];
      case 'item':
        return ['QuestionnaireItemBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [QuestionnaireBuilder]
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
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'derivedFrom':
        {
          derivedFrom = <FhirCanonicalBuilder>[];
          return;
        }
      case 'status':
        {
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'experimental':
        {
          experimental = FhirBooleanBuilder.empty();
          return;
        }
      case 'subjectType':
        {
          subjectType = <FhirCodeBuilder>[];
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'publisher':
        {
          publisher = FhirStringBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = <ContactDetailBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'useContext':
        {
          useContext = <UsageContextBuilder>[];
          return;
        }
      case 'jurisdiction':
        {
          jurisdiction = <CodeableConceptBuilder>[];
          return;
        }
      case 'purpose':
        {
          purpose = FhirMarkdownBuilder.empty();
          return;
        }
      case 'copyright':
        {
          copyright = FhirMarkdownBuilder.empty();
          return;
        }
      case 'approvalDate':
        {
          approvalDate = FhirDateBuilder.empty();
          return;
        }
      case 'lastReviewDate':
        {
          lastReviewDate = FhirDateBuilder.empty();
          return;
        }
      case 'effectivePeriod':
        {
          effectivePeriod = PeriodBuilder.empty();
          return;
        }
      case 'code':
        {
          code = <CodingBuilder>[];
          return;
        }
      case 'item':
        {
          item = <QuestionnaireItemBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  QuestionnaireBuilder clone() => throw UnimplementedError();
  @override
  QuestionnaireBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? version,
    FhirStringBuilder? name,
    FhirStringBuilder? title,
    List<FhirCanonicalBuilder>? derivedFrom,
    PublicationStatusBuilder? status,
    FhirBooleanBuilder? experimental,
    List<FhirCodeBuilder>? subjectType,
    FhirDateTimeBuilder? date,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    FhirMarkdownBuilder? description,
    List<UsageContextBuilder>? useContext,
    List<CodeableConceptBuilder>? jurisdiction,
    FhirMarkdownBuilder? purpose,
    FhirMarkdownBuilder? copyright,
    FhirDateBuilder? approvalDate,
    FhirDateBuilder? lastReviewDate,
    PeriodBuilder? effectivePeriod,
    List<CodingBuilder>? code,
    List<QuestionnaireItemBuilder>? item,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = QuestionnaireBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      name: name ?? this.name,
      title: title ?? this.title,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      subjectType: subjectType ?? this.subjectType,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      copyright: copyright ?? this.copyright,
      approvalDate: approvalDate ?? this.approvalDate,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      code: code ?? this.code,
      item: item ?? this.item,
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
    if (o is! QuestionnaireBuilder) {
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
    if (!equalsDeepWithNull(
      url,
      o.url,
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
    if (!listEquals<FhirCanonicalBuilder>(
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
    if (!listEquals<FhirCodeBuilder>(
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
    if (!listEquals<ContactDetailBuilder>(
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
    if (!listEquals<UsageContextBuilder>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<CodingBuilder>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<QuestionnaireItemBuilder>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}

/// [QuestionnaireItemBuilder]
/// A particular question, question grouping or display text that is part
/// of the questionnaire.
class QuestionnaireItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [QuestionnaireItemBuilder]

  QuestionnaireItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.linkId,
    this.definition,
    this.code,
    this.prefix,
    this.text,
    this.type,
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
  /// For Builder classes, no fields are required
  factory QuestionnaireItemBuilder.empty() => QuestionnaireItemBuilder(
        linkId: FhirStringBuilder.empty(),
        type: QuestionnaireItemTypeBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Questionnaire.item';
    return QuestionnaireItemBuilder(
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
      linkId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'linkId',
        FhirStringBuilder.fromJson,
        '$objectPath.linkId',
      ),
      definition: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'definition',
        FhirUriBuilder.fromJson,
        '$objectPath.definition',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      prefix: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'prefix',
        FhirStringBuilder.fromJson,
        '$objectPath.prefix',
      ),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
      type: JsonParser.parsePrimitive<QuestionnaireItemTypeBuilder>(
        json,
        'type',
        QuestionnaireItemTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      enableWhen: (json['enableWhen'] as List<dynamic>?)
          ?.map<QuestionnaireEnableWhenBuilder>(
            (v) => QuestionnaireEnableWhenBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.enableWhen',
              },
            ),
          )
          .toList(),
      enableBehavior: JsonParser.parsePrimitive<EnableWhenBehaviorBuilder>(
        json,
        'enableBehavior',
        EnableWhenBehaviorBuilder.fromJson,
        '$objectPath.enableBehavior',
      ),
      required_: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'required',
        FhirBooleanBuilder.fromJson,
        '$objectPath.required',
      ),
      repeats: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'repeats',
        FhirBooleanBuilder.fromJson,
        '$objectPath.repeats',
      ),
      readOnly: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'readOnly',
        FhirBooleanBuilder.fromJson,
        '$objectPath.readOnly',
      ),
      maxLength: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'maxLength',
        FhirIntegerBuilder.fromJson,
        '$objectPath.maxLength',
      ),
      answerValueSet: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'answerValueSet',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.answerValueSet',
      ),
      answerOption: (json['answerOption'] as List<dynamic>?)
          ?.map<QuestionnaireAnswerOptionBuilder>(
            (v) => QuestionnaireAnswerOptionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.answerOption',
              },
            ),
          )
          .toList(),
      initial: (json['initial'] as List<dynamic>?)
          ?.map<QuestionnaireInitialBuilder>(
            (v) => QuestionnaireInitialBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.initial',
              },
            ),
          )
          .toList(),
      item: (json['item'] as List<dynamic>?)
          ?.map<QuestionnaireItemBuilder>(
            (v) => QuestionnaireItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [QuestionnaireItemBuilder]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return QuestionnaireItemBuilder.fromJson(json);
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
  FhirStringBuilder? linkId;

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
  FhirUriBuilder? definition;

  /// [code]
  /// A terminology code that corresponds to this group or question (e.g. a
  /// code from LOINC, which defines many questions and answers).
  List<CodingBuilder>? code;

  /// [prefix]
  /// A short label for a particular group, question or set of display text
  /// within the questionnaire used for reference by the individual
  /// completing the questionnaire.
  FhirStringBuilder? prefix;

  /// [text]
  /// The name of a section, the text of a question or text content for a
  /// display item.
  FhirStringBuilder? text;

  /// [type]
  /// The type of questionnaire item this is - whether text for display, a
  /// grouping of other items or a particular type of data to be captured
  /// (string, integer, coded choice, etc.).
  QuestionnaireItemTypeBuilder? type;

  /// [enableWhen]
  /// A constraint indicating that this item should only be enabled
  /// (displayed/allow answers to be captured) when the specified condition
  /// is true.
  List<QuestionnaireEnableWhenBuilder>? enableWhen;

  /// [enableBehavior]
  /// Controls how multiple enableWhen values are interpreted - whether all
  /// or any must be true.
  EnableWhenBehaviorBuilder? enableBehavior;

  /// [required_]
  /// An indication, if true, that the item must be present in a "completed"
  /// QuestionnaireResponse. If false, the item may be skipped when answering
  /// the questionnaire.
  FhirBooleanBuilder? required_;

  /// [repeats]
  /// An indication, if true, that the item may occur multiple times in the
  /// response, collecting multiple answers for questions or multiple sets of
  /// answers for groups.
  FhirBooleanBuilder? repeats;

  /// [readOnly]
  /// An indication, when true, that the value cannot be changed by a human
  /// respondent to the Questionnaire.
  FhirBooleanBuilder? readOnly;

  /// [maxLength]
  /// The maximum number of characters that are permitted in the answer to be
  /// considered a "valid" QuestionnaireResponse.
  FhirIntegerBuilder? maxLength;

  /// [answerValueSet]
  /// A reference to a value set containing a list of codes representing
  /// permitted answers for a "choice" or "open-choice" question.
  FhirCanonicalBuilder? answerValueSet;

  /// [answerOption]
  /// One of the permitted answers for a "choice" or "open-choice" question.
  List<QuestionnaireAnswerOptionBuilder>? answerOption;

  /// [initial]
  /// One or more values that should be pre-populated in the answer when
  /// initially rendering the questionnaire for user input.
  List<QuestionnaireInitialBuilder>? initial;

  /// [item]
  /// Text, questions and other groups to be nested beneath a question or
  /// group.
  List<QuestionnaireItemBuilder>? item;

  /// Converts a [QuestionnaireItemBuilder]
  /// to [QuestionnaireItem]
  @override
  QuestionnaireItem build() => QuestionnaireItem.fromJson(toJson());

  /// Converts a [QuestionnaireItemBuilder]
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
    addField('linkId', linkId);
    addField('definition', definition);
    addField('code', code);
    addField('prefix', prefix);
    addField('text', text);
    addField('type', type);
    addField('enableWhen', enableWhen);
    addField('enableBehavior', enableBehavior);
    addField('required', required_);
    addField('repeats', repeats);
    addField('readOnly', readOnly);
    addField('maxLength', maxLength);
    addField('answerValueSet', answerValueSet);
    addField('answerOption', answerOption);
    addField('initial', initial);
    addField('item', item);
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
      case 'linkId':
        if (linkId != null) {
          fields.add(linkId!);
        }
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
        if (type != null) {
          fields.add(type!);
        }
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
      case 'linkId':
        {
          if (child is FhirStringBuilder) {
            linkId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                linkId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definition':
        {
          if (child is FhirUriBuilder) {
            definition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                definition = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            code = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            code = [
              ...(code ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'prefix':
        {
          if (child is FhirStringBuilder) {
            prefix = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                prefix = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                text = converted;
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
          if (child is QuestionnaireItemTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = QuestionnaireItemTypeBuilder(stringValue);
                type = converted;
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
      case 'enableWhen':
        {
          if (child is List<QuestionnaireEnableWhenBuilder>) {
            // Replace or create new list
            enableWhen = child;
            return;
          } else if (child is QuestionnaireEnableWhenBuilder) {
            // Add single element to existing list or create new list
            enableWhen = [
              ...(enableWhen ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'enableBehavior':
        {
          if (child is EnableWhenBehaviorBuilder) {
            enableBehavior = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = EnableWhenBehaviorBuilder(stringValue);
                enableBehavior = converted;
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
      case 'required':
        {
          if (child is FhirBooleanBuilder) {
            required_ = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                required_ = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'repeats':
        {
          if (child is FhirBooleanBuilder) {
            repeats = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                repeats = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'readOnly':
        {
          if (child is FhirBooleanBuilder) {
            readOnly = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                readOnly = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxLength':
        {
          if (child is FhirIntegerBuilder) {
            maxLength = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  maxLength = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'answerValueSet':
        {
          if (child is FhirCanonicalBuilder) {
            answerValueSet = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                answerValueSet = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'answerOption':
        {
          if (child is List<QuestionnaireAnswerOptionBuilder>) {
            // Replace or create new list
            answerOption = child;
            return;
          } else if (child is QuestionnaireAnswerOptionBuilder) {
            // Add single element to existing list or create new list
            answerOption = [
              ...(answerOption ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'initial':
        {
          if (child is List<QuestionnaireInitialBuilder>) {
            // Replace or create new list
            initial = child;
            return;
          } else if (child is QuestionnaireInitialBuilder) {
            // Add single element to existing list or create new list
            initial = [
              ...(initial ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'item':
        {
          if (child is List<QuestionnaireItemBuilder>) {
            // Replace or create new list
            item = child;
            return;
          } else if (child is QuestionnaireItemBuilder) {
            // Add single element to existing list or create new list
            item = [
              ...(item ?? []),
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
      case 'linkId':
        return ['FhirStringBuilder'];
      case 'definition':
        return ['FhirUriBuilder'];
      case 'code':
        return ['CodingBuilder'];
      case 'prefix':
        return ['FhirStringBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'enableWhen':
        return ['QuestionnaireEnableWhenBuilder'];
      case 'enableBehavior':
        return ['FhirCodeEnumBuilder'];
      case 'required':
        return ['FhirBooleanBuilder'];
      case 'repeats':
        return ['FhirBooleanBuilder'];
      case 'readOnly':
        return ['FhirBooleanBuilder'];
      case 'maxLength':
        return ['FhirIntegerBuilder'];
      case 'answerValueSet':
        return ['FhirCanonicalBuilder'];
      case 'answerOption':
        return ['QuestionnaireAnswerOptionBuilder'];
      case 'initial':
        return ['QuestionnaireInitialBuilder'];
      case 'item':
        return ['QuestionnaireItemBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [QuestionnaireItemBuilder]
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
      case 'linkId':
        {
          linkId = FhirStringBuilder.empty();
          return;
        }
      case 'definition':
        {
          definition = FhirUriBuilder.empty();
          return;
        }
      case 'code':
        {
          code = <CodingBuilder>[];
          return;
        }
      case 'prefix':
        {
          prefix = FhirStringBuilder.empty();
          return;
        }
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = QuestionnaireItemTypeBuilder.empty();
          return;
        }
      case 'enableWhen':
        {
          enableWhen = <QuestionnaireEnableWhenBuilder>[];
          return;
        }
      case 'enableBehavior':
        {
          enableBehavior = EnableWhenBehaviorBuilder.empty();
          return;
        }
      case 'required':
        {
          required_ = FhirBooleanBuilder.empty();
          return;
        }
      case 'repeats':
        {
          repeats = FhirBooleanBuilder.empty();
          return;
        }
      case 'readOnly':
        {
          readOnly = FhirBooleanBuilder.empty();
          return;
        }
      case 'maxLength':
        {
          maxLength = FhirIntegerBuilder.empty();
          return;
        }
      case 'answerValueSet':
        {
          answerValueSet = FhirCanonicalBuilder.empty();
          return;
        }
      case 'answerOption':
        {
          answerOption = <QuestionnaireAnswerOptionBuilder>[];
          return;
        }
      case 'initial':
        {
          initial = <QuestionnaireInitialBuilder>[];
          return;
        }
      case 'item':
        {
          item = <QuestionnaireItemBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  QuestionnaireItemBuilder clone() => throw UnimplementedError();
  @override
  QuestionnaireItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? linkId,
    FhirUriBuilder? definition,
    List<CodingBuilder>? code,
    FhirStringBuilder? prefix,
    FhirStringBuilder? text,
    QuestionnaireItemTypeBuilder? type,
    List<QuestionnaireEnableWhenBuilder>? enableWhen,
    EnableWhenBehaviorBuilder? enableBehavior,
    FhirBooleanBuilder? required_,
    FhirBooleanBuilder? repeats,
    FhirBooleanBuilder? readOnly,
    FhirIntegerBuilder? maxLength,
    FhirCanonicalBuilder? answerValueSet,
    List<QuestionnaireAnswerOptionBuilder>? answerOption,
    List<QuestionnaireInitialBuilder>? initial,
    List<QuestionnaireItemBuilder>? item,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = QuestionnaireItemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      linkId: linkId ?? this.linkId,
      definition: definition ?? this.definition,
      code: code ?? this.code,
      prefix: prefix ?? this.prefix,
      text: text ?? this.text,
      type: type ?? this.type,
      enableWhen: enableWhen ?? this.enableWhen,
      enableBehavior: enableBehavior ?? this.enableBehavior,
      required_: required_ ?? this.required_,
      repeats: repeats ?? this.repeats,
      readOnly: readOnly ?? this.readOnly,
      maxLength: maxLength ?? this.maxLength,
      answerValueSet: answerValueSet ?? this.answerValueSet,
      answerOption: answerOption ?? this.answerOption,
      initial: initial ?? this.initial,
      item: item ?? this.item,
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
    if (o is! QuestionnaireItemBuilder) {
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
    if (!listEquals<CodingBuilder>(
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
    if (!listEquals<QuestionnaireEnableWhenBuilder>(
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
    if (!listEquals<QuestionnaireAnswerOptionBuilder>(
      answerOption,
      o.answerOption,
    )) {
      return false;
    }
    if (!listEquals<QuestionnaireInitialBuilder>(
      initial,
      o.initial,
    )) {
      return false;
    }
    if (!listEquals<QuestionnaireItemBuilder>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}

/// [QuestionnaireEnableWhenBuilder]
/// A constraint indicating that this item should only be enabled
/// (displayed/allow answers to be captured) when the specified condition
/// is true.
class QuestionnaireEnableWhenBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [QuestionnaireEnableWhenBuilder]

  QuestionnaireEnableWhenBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.question,
    this.operator_,
    this.answerX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Questionnaire.item.enableWhen',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory QuestionnaireEnableWhenBuilder.empty() =>
      QuestionnaireEnableWhenBuilder(
        question: FhirStringBuilder.empty(),
        operator_: QuestionnaireItemOperatorBuilder.values.first,
        answerX: FhirBooleanBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireEnableWhenBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Questionnaire.item.enableWhen';
    return QuestionnaireEnableWhenBuilder(
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
      question: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'question',
        FhirStringBuilder.fromJson,
        '$objectPath.question',
      ),
      operator_: JsonParser.parsePrimitive<QuestionnaireItemOperatorBuilder>(
        json,
        'operator',
        QuestionnaireItemOperatorBuilder.fromJson,
        '$objectPath.operator',
      ),
      answerX:
          JsonParser.parsePolymorphic<AnswerXQuestionnaireEnableWhenBuilder>(
        json,
        {
          'answerBoolean': FhirBooleanBuilder.fromJson,
          'answerDecimal': FhirDecimalBuilder.fromJson,
          'answerInteger': FhirIntegerBuilder.fromJson,
          'answerDate': FhirDateBuilder.fromJson,
          'answerDateTime': FhirDateTimeBuilder.fromJson,
          'answerTime': FhirTimeBuilder.fromJson,
          'answerString': FhirStringBuilder.fromJson,
          'answerCoding': CodingBuilder.fromJson,
          'answerQuantity': QuantityBuilder.fromJson,
          'answerReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [QuestionnaireEnableWhenBuilder]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireEnableWhenBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireEnableWhenBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireEnableWhenBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireEnableWhenBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireEnableWhenBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireEnableWhenBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return QuestionnaireEnableWhenBuilder.fromJson(json);
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
  FhirStringBuilder? question;

  /// [operator_]
  /// Specifies the criteria by which the question is enabled.
  QuestionnaireItemOperatorBuilder? operator_;

  /// [answerX]
  /// A value that the referenced question is tested using the specified
  /// operator in order for the item to be enabled.
  AnswerXQuestionnaireEnableWhenBuilder? answerX;

  /// Getter for [answerBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get answerBoolean => answerX?.isAs<FhirBooleanBuilder>();

  /// Getter for [answerDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get answerDecimal => answerX?.isAs<FhirDecimalBuilder>();

  /// Getter for [answerInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get answerInteger => answerX?.isAs<FhirIntegerBuilder>();

  /// Getter for [answerDate] as a FhirDateBuilder
  FhirDateBuilder? get answerDate => answerX?.isAs<FhirDateBuilder>();

  /// Getter for [answerDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get answerDateTime =>
      answerX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [answerTime] as a FhirTimeBuilder
  FhirTimeBuilder? get answerTime => answerX?.isAs<FhirTimeBuilder>();

  /// Getter for [answerString] as a FhirStringBuilder
  FhirStringBuilder? get answerString => answerX?.isAs<FhirStringBuilder>();

  /// Getter for [answerCoding] as a CodingBuilder
  CodingBuilder? get answerCoding => answerX?.isAs<CodingBuilder>();

  /// Getter for [answerQuantity] as a QuantityBuilder
  QuantityBuilder? get answerQuantity => answerX?.isAs<QuantityBuilder>();

  /// Getter for [answerReference] as a ReferenceBuilder
  ReferenceBuilder? get answerReference => answerX?.isAs<ReferenceBuilder>();

  /// Converts a [QuestionnaireEnableWhenBuilder]
  /// to [QuestionnaireEnableWhen]
  @override
  QuestionnaireEnableWhen build() => QuestionnaireEnableWhen.fromJson(toJson());

  /// Converts a [QuestionnaireEnableWhenBuilder]
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
    addField('question', question);
    addField('operator', operator_);
    if (answerX != null) {
      final fhirType = answerX!.fhirType;
      addField('answer${fhirType.capitalizeFirstLetter()}', answerX);
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
      'question',
      'operator',
      'answerX',
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
      case 'question':
        if (question != null) {
          fields.add(question!);
        }
      case 'operator':
        if (operator_ != null) {
          fields.add(operator_!);
        }
      case 'answer':
        if (answerX != null) {
          fields.add(answerX!);
        }
      case 'answerX':
        if (answerX != null) {
          fields.add(answerX!);
        }
      case 'answerBoolean':
        if (answerX is FhirBooleanBuilder) {
          fields.add(answerX!);
        }
      case 'answerDecimal':
        if (answerX is FhirDecimalBuilder) {
          fields.add(answerX!);
        }
      case 'answerInteger':
        if (answerX is FhirIntegerBuilder) {
          fields.add(answerX!);
        }
      case 'answerDate':
        if (answerX is FhirDateBuilder) {
          fields.add(answerX!);
        }
      case 'answerDateTime':
        if (answerX is FhirDateTimeBuilder) {
          fields.add(answerX!);
        }
      case 'answerTime':
        if (answerX is FhirTimeBuilder) {
          fields.add(answerX!);
        }
      case 'answerString':
        if (answerX is FhirStringBuilder) {
          fields.add(answerX!);
        }
      case 'answerCoding':
        if (answerX is CodingBuilder) {
          fields.add(answerX!);
        }
      case 'answerQuantity':
        if (answerX is QuantityBuilder) {
          fields.add(answerX!);
        }
      case 'answerReference':
        if (answerX is ReferenceBuilder) {
          fields.add(answerX!);
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
      case 'question':
        {
          if (child is FhirStringBuilder) {
            question = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                question = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'operator':
        {
          if (child is QuestionnaireItemOperatorBuilder) {
            operator_ = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = QuestionnaireItemOperatorBuilder(stringValue);
                operator_ = converted;
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
      case 'answer':
      case 'answerX':
        {
          if (child is AnswerXQuestionnaireEnableWhenBuilder) {
            answerX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              answerX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              answerX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              answerX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              answerX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              answerX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              answerX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              answerX = child;
              return;
            }
            if (child is CodingBuilder) {
              answerX = child;
              return;
            }
            if (child is QuantityBuilder) {
              answerX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              answerX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'answerBoolean':
        {
          if (child is FhirBooleanBuilder) {
            answerX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerDecimal':
        {
          if (child is FhirDecimalBuilder) {
            answerX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerInteger':
        {
          if (child is FhirIntegerBuilder) {
            answerX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerDate':
        {
          if (child is FhirDateBuilder) {
            answerX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            answerX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerTime':
        {
          if (child is FhirTimeBuilder) {
            answerX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerString':
        {
          if (child is FhirStringBuilder) {
            answerX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerCoding':
        {
          if (child is CodingBuilder) {
            answerX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerQuantity':
        {
          if (child is QuantityBuilder) {
            answerX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'answerReference':
        {
          if (child is ReferenceBuilder) {
            answerX = child;
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
      case 'question':
        return ['FhirStringBuilder'];
      case 'operator':
        return ['FhirCodeEnumBuilder'];
      case 'answer':
      case 'answerX':
        return [
          'FhirBooleanBuilder',
          'FhirDecimalBuilder',
          'FhirIntegerBuilder',
          'FhirDateBuilder',
          'FhirDateTimeBuilder',
          'FhirTimeBuilder',
          'FhirStringBuilder',
          'CodingBuilder',
          'QuantityBuilder',
          'ReferenceBuilder',
        ];
      case 'answerBoolean':
        return ['FhirBooleanBuilder'];
      case 'answerDecimal':
        return ['FhirDecimalBuilder'];
      case 'answerInteger':
        return ['FhirIntegerBuilder'];
      case 'answerDate':
        return ['FhirDateBuilder'];
      case 'answerDateTime':
        return ['FhirDateTimeBuilder'];
      case 'answerTime':
        return ['FhirTimeBuilder'];
      case 'answerString':
        return ['FhirStringBuilder'];
      case 'answerCoding':
        return ['CodingBuilder'];
      case 'answerQuantity':
        return ['QuantityBuilder'];
      case 'answerReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [QuestionnaireEnableWhenBuilder]
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
      case 'question':
        {
          question = FhirStringBuilder.empty();
          return;
        }
      case 'operator':
        {
          operator_ = QuestionnaireItemOperatorBuilder.empty();
          return;
        }
      case 'answer':
      case 'answerX':
      case 'answerBoolean':
        {
          answerX = FhirBooleanBuilder.empty();
          return;
        }
      case 'answerDecimal':
        {
          answerX = FhirDecimalBuilder.empty();
          return;
        }
      case 'answerInteger':
        {
          answerX = FhirIntegerBuilder.empty();
          return;
        }
      case 'answerDate':
        {
          answerX = FhirDateBuilder.empty();
          return;
        }
      case 'answerDateTime':
        {
          answerX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'answerTime':
        {
          answerX = FhirTimeBuilder.empty();
          return;
        }
      case 'answerString':
        {
          answerX = FhirStringBuilder.empty();
          return;
        }
      case 'answerCoding':
        {
          answerX = CodingBuilder.empty();
          return;
        }
      case 'answerQuantity':
        {
          answerX = QuantityBuilder.empty();
          return;
        }
      case 'answerReference':
        {
          answerX = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  QuestionnaireEnableWhenBuilder clone() => throw UnimplementedError();
  @override
  QuestionnaireEnableWhenBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? question,
    QuestionnaireItemOperatorBuilder? operator_,
    AnswerXQuestionnaireEnableWhenBuilder? answerX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = QuestionnaireEnableWhenBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      question: question ?? this.question,
      operator_: operator_ ?? this.operator_,
      answerX: answerX ?? this.answerX,
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
    if (o is! QuestionnaireEnableWhenBuilder) {
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

/// [QuestionnaireAnswerOptionBuilder]
/// One of the permitted answers for a "choice" or "open-choice" question.
class QuestionnaireAnswerOptionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [QuestionnaireAnswerOptionBuilder]

  QuestionnaireAnswerOptionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.valueX,
    this.initialSelected,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Questionnaire.item.answerOption',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory QuestionnaireAnswerOptionBuilder.empty() =>
      QuestionnaireAnswerOptionBuilder(
        valueX: FhirIntegerBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireAnswerOptionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Questionnaire.item.answerOption';
    return QuestionnaireAnswerOptionBuilder(
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
      valueX:
          JsonParser.parsePolymorphic<ValueXQuestionnaireAnswerOptionBuilder>(
        json,
        {
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueDate': FhirDateBuilder.fromJson,
          'valueTime': FhirTimeBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueCoding': CodingBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      initialSelected: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'initialSelected',
        FhirBooleanBuilder.fromJson,
        '$objectPath.initialSelected',
      ),
    );
  }

  /// Deserialize [QuestionnaireAnswerOptionBuilder]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireAnswerOptionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireAnswerOptionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireAnswerOptionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireAnswerOptionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireAnswerOptionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireAnswerOptionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return QuestionnaireAnswerOptionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireAnswerOption';

  /// [valueX]
  /// A potential answer that's allowed as the answer to this question.
  ValueXQuestionnaireAnswerOptionBuilder? valueX;

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueDate] as a FhirDateBuilder
  FhirDateBuilder? get valueDate => valueX?.isAs<FhirDateBuilder>();

  /// Getter for [valueTime] as a FhirTimeBuilder
  FhirTimeBuilder? get valueTime => valueX?.isAs<FhirTimeBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueCoding] as a CodingBuilder
  CodingBuilder? get valueCoding => valueX?.isAs<CodingBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// [initialSelected]
  /// Indicates whether the answer value is selected when the list of
  /// possible answers is initially shown.
  FhirBooleanBuilder? initialSelected;

  /// Converts a [QuestionnaireAnswerOptionBuilder]
  /// to [QuestionnaireAnswerOption]
  @override
  QuestionnaireAnswerOption build() =>
      QuestionnaireAnswerOption.fromJson(toJson());

  /// Converts a [QuestionnaireAnswerOptionBuilder]
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
    }

    addField('initialSelected', initialSelected);
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
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDateBuilder) {
          fields.add(valueX!);
        }
      case 'valueTime':
        if (valueX is FhirTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueCoding':
        if (valueX is CodingBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
          fields.add(valueX!);
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
      case 'value':
      case 'valueX':
        {
          if (child is ValueXQuestionnaireAnswerOptionBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is CodingBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDate':
        {
          if (child is FhirDateBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTime':
        {
          if (child is FhirTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCoding':
        {
          if (child is CodingBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is ReferenceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'initialSelected':
        {
          if (child is FhirBooleanBuilder) {
            initialSelected = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                initialSelected = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'value':
      case 'valueX':
        return [
          'FhirIntegerBuilder',
          'FhirDateBuilder',
          'FhirTimeBuilder',
          'FhirStringBuilder',
          'CodingBuilder',
          'ReferenceBuilder',
        ];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueDate':
        return ['FhirDateBuilder'];
      case 'valueTime':
        return ['FhirTimeBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueCoding':
        return ['CodingBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      case 'initialSelected':
        return ['FhirBooleanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [QuestionnaireAnswerOptionBuilder]
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
      case 'value':
      case 'valueX':
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueDate':
        {
          valueX = FhirDateBuilder.empty();
          return;
        }
      case 'valueTime':
        {
          valueX = FhirTimeBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueCoding':
        {
          valueX = CodingBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      case 'initialSelected':
        {
          initialSelected = FhirBooleanBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  QuestionnaireAnswerOptionBuilder clone() => throw UnimplementedError();
  @override
  QuestionnaireAnswerOptionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ValueXQuestionnaireAnswerOptionBuilder? valueX,
    FhirBooleanBuilder? initialSelected,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = QuestionnaireAnswerOptionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueX: valueX ?? this.valueX,
      initialSelected: initialSelected ?? this.initialSelected,
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
    if (o is! QuestionnaireAnswerOptionBuilder) {
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

/// [QuestionnaireInitialBuilder]
/// One or more values that should be pre-populated in the answer when
/// initially rendering the questionnaire for user input.
class QuestionnaireInitialBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [QuestionnaireInitialBuilder]

  QuestionnaireInitialBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.valueX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Questionnaire.item.initial',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory QuestionnaireInitialBuilder.empty() => QuestionnaireInitialBuilder(
        valueX: FhirBooleanBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireInitialBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Questionnaire.item.initial';
    return QuestionnaireInitialBuilder(
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
      valueX: JsonParser.parsePolymorphic<ValueXQuestionnaireInitialBuilder>(
        json,
        {
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueDecimal': FhirDecimalBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueDate': FhirDateBuilder.fromJson,
          'valueDateTime': FhirDateTimeBuilder.fromJson,
          'valueTime': FhirTimeBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueUri': FhirUriBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
          'valueCoding': CodingBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [QuestionnaireInitialBuilder]
  /// from a [String] or [YamlMap] object
  factory QuestionnaireInitialBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuestionnaireInitialBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuestionnaireInitialBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuestionnaireInitialBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuestionnaireInitialBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuestionnaireInitialBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return QuestionnaireInitialBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'QuestionnaireInitial';

  /// [valueX]
  /// The actual value to for an initial answer.
  ValueXQuestionnaireInitialBuilder? valueX;

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get valueDecimal => valueX?.isAs<FhirDecimalBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueDate] as a FhirDateBuilder
  FhirDateBuilder? get valueDate => valueX?.isAs<FhirDateBuilder>();

  /// Getter for [valueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get valueDateTime => valueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [valueTime] as a FhirTimeBuilder
  FhirTimeBuilder? get valueTime => valueX?.isAs<FhirTimeBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueUri] as a FhirUriBuilder
  FhirUriBuilder? get valueUri => valueX?.isAs<FhirUriBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Getter for [valueCoding] as a CodingBuilder
  CodingBuilder? get valueCoding => valueX?.isAs<CodingBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// Converts a [QuestionnaireInitialBuilder]
  /// to [QuestionnaireInitial]
  @override
  QuestionnaireInitial build() => QuestionnaireInitial.fromJson(toJson());

  /// Converts a [QuestionnaireInitialBuilder]
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
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
      'valueX',
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
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimalBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDateBuilder) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueTime':
        if (valueX is FhirTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueUri':
        if (valueX is FhirUriBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
          fields.add(valueX!);
        }
      case 'valueCoding':
        if (valueX is CodingBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
          fields.add(valueX!);
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
      case 'value':
      case 'valueX':
        {
          if (child is ValueXQuestionnaireInitialBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
            if (child is CodingBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDecimal':
        {
          if (child is FhirDecimalBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDate':
        {
          if (child is FhirDateBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTime':
        {
          if (child is FhirTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUri':
        {
          if (child is FhirUriBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is AttachmentBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCoding':
        {
          if (child is CodingBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is ReferenceBuilder) {
            valueX = child;
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
      case 'value':
      case 'valueX':
        return [
          'FhirBooleanBuilder',
          'FhirDecimalBuilder',
          'FhirIntegerBuilder',
          'FhirDateBuilder',
          'FhirDateTimeBuilder',
          'FhirTimeBuilder',
          'FhirStringBuilder',
          'FhirUriBuilder',
          'AttachmentBuilder',
          'CodingBuilder',
          'QuantityBuilder',
          'ReferenceBuilder',
        ];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueDecimal':
        return ['FhirDecimalBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueDate':
        return ['FhirDateBuilder'];
      case 'valueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'valueTime':
        return ['FhirTimeBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueUri':
        return ['FhirUriBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      case 'valueCoding':
        return ['CodingBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [QuestionnaireInitialBuilder]
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
      case 'value':
      case 'valueX':
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueDecimal':
        {
          valueX = FhirDecimalBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueDate':
        {
          valueX = FhirDateBuilder.empty();
          return;
        }
      case 'valueDateTime':
        {
          valueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'valueTime':
        {
          valueX = FhirTimeBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueUri':
        {
          valueX = FhirUriBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      case 'valueCoding':
        {
          valueX = CodingBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  QuestionnaireInitialBuilder clone() => throw UnimplementedError();
  @override
  QuestionnaireInitialBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ValueXQuestionnaireInitialBuilder? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = QuestionnaireInitialBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueX: valueX ?? this.valueX,
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
    if (o is! QuestionnaireInitialBuilder) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
