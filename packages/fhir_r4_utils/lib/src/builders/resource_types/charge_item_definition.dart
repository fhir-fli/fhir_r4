import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        ChargeItemDefinition,
        ChargeItemDefinitionApplicability,
        ChargeItemDefinitionPropertyGroup,
        ChargeItemDefinitionPriceComponent;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ChargeItemDefinitionBuilder]
/// The ChargeItemDefinition resource provides the properties that apply to
/// the (billing) codes necessary to calculate costs and prices. The
/// properties may differ largely depending on type and realm, therefore
/// this resource gives only a rough structure and requires profiling for
/// each type of billing code system.
class ChargeItemDefinitionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ChargeItemDefinitionBuilder]

  ChargeItemDefinitionBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.title,
    this.derivedFromUri,
    this.partOf,
    this.replaces,
    this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.code,
    this.instance,
    this.applicability,
    this.propertyGroup,
  }) : super(
          objectPath: 'ChargeItemDefinition',
          resourceType: R4ResourceType.ChargeItemDefinition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ChargeItemDefinitionBuilder.empty() => ChargeItemDefinitionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ChargeItemDefinition';
    return ChargeItemDefinitionBuilder(
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
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      derivedFromUri: JsonParser.parsePrimitiveList<FhirUriBuilder>(
        json,
        'derivedFromUri',
        FhirUriBuilder.fromJson,
        '$objectPath.derivedFromUri',
      ),
      partOf: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'partOf',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.partOf',
      ),
      replaces: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'replaces',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.replaces',
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
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      instance: (json['instance'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.instance',
              },
            ),
          )
          .toList(),
      applicability: (json['applicability'] as List<dynamic>?)
          ?.map<ChargeItemDefinitionApplicabilityBuilder>(
            (v) => ChargeItemDefinitionApplicabilityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.applicability',
              },
            ),
          )
          .toList(),
      propertyGroup: (json['propertyGroup'] as List<dynamic>?)
          ?.map<ChargeItemDefinitionPropertyGroupBuilder>(
            (v) => ChargeItemDefinitionPropertyGroupBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.propertyGroup',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ChargeItemDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory ChargeItemDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItemDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItemDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItemDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItemDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ChargeItemDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemDefinition';

  /// [url]
  /// An absolute URI that is used to identify this charge item definition
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique
  /// and SHOULD be a literal address at which at which an authoritative
  /// instance of this charge item definition is (or will be) published. This
  /// URL can be the target of a canonical reference. It SHALL remain the
  /// same when the charge item definition is stored on different servers.
  FhirUriBuilder? url;

  /// [identifier]
  /// A formal identifier that is used to identify this charge item
  /// definition when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  List<IdentifierBuilder>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the charge item
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the charge item
  /// definition author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version
  /// is not available. There is also no expectation that versions can be
  /// placed in a lexicographical sequence. To provide a version consistent
  /// with the Decision Support Service specification, use the format
  /// Major.Minor.Revision (e.g. 1.0.0). For more information on versioning
  /// knowledge assets, refer to the Decision Support Service specification.
  /// Note that a version is required for non-experimental active assets.
  FhirStringBuilder? version;

  /// [title]
  /// A short, descriptive, user-friendly title for the charge item
  /// definition.
  FhirStringBuilder? title;

  /// [derivedFromUri]
  /// The URL pointing to an externally-defined charge item definition that
  /// is adhered to in whole or in part by this definition.
  List<FhirUriBuilder>? derivedFromUri;

  /// [partOf]
  /// A larger definition of which this particular definition is a component
  /// or step.
  List<FhirCanonicalBuilder>? partOf;

  /// [replaces]
  /// As new versions of a protocol or guideline are defined, allows
  /// identification of what versions are replaced by a new instance.
  List<FhirCanonicalBuilder>? replaces;

  /// [status]
  /// The current state of the ChargeItemDefinition.
  PublicationStatusBuilder? status;

  /// [experimental]
  /// A Boolean value to indicate that this charge item definition is
  /// authored for testing purposes (or education/evaluation/marketing) and
  /// is not intended to be used for genuine usage.
  FhirBooleanBuilder? experimental;

  /// [date]
  /// The date (and optionally time) when the charge item definition was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the charge item definition
  /// changes.
  FhirDateTimeBuilder? date;

  /// [publisher]
  /// The name of the organization or individual that published the charge
  /// item definition.
  FhirStringBuilder? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  List<ContactDetailBuilder>? contact;

  /// [description]
  /// A free text natural language description of the charge item definition
  /// from a consumer's perspective.
  FhirMarkdownBuilder? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate charge item definition instances.
  List<UsageContextBuilder>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the charge item definition is
  /// intended to be used.
  List<CodeableConceptBuilder>? jurisdiction;

  /// [copyright]
  /// A copyright statement relating to the charge item definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the charge item definition.
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
  /// The period during which the charge item definition content was or is
  /// planned to be in active use.
  PeriodBuilder? effectivePeriod;

  /// [code]
  /// The defined billing details in this resource pertain to the given
  /// billing code.
  CodeableConceptBuilder? code;

  /// [instance]
  /// The defined billing details in this resource pertain to the given
  /// product instance(s).
  List<ReferenceBuilder>? instance;

  /// [applicability]
  /// Expressions that describe applicability criteria for the billing code.
  List<ChargeItemDefinitionApplicabilityBuilder>? applicability;

  /// [propertyGroup]
  /// Group of properties which are applicable under the same conditions. If
  /// no applicability rules are established for the group, then all
  /// properties always apply.
  List<ChargeItemDefinitionPropertyGroupBuilder>? propertyGroup;

  /// Converts a ChargeItemDefinitionBuilder to [ChargeItemDefinition]
  ChargeItemDefinition build() => ChargeItemDefinition.fromJson(toJson());

  /// Converts a [ChargeItemDefinitionBuilder] to a [Map<String, dynamic>]
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
    addField('title', title);
    addField('derivedFromUri', derivedFromUri);
    addField('partOf', partOf);
    addField('replaces', replaces);
    addField('status', status);
    addField('experimental', experimental);
    addField('date', date);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('description', description);
    addField('useContext', useContext);
    addField('jurisdiction', jurisdiction);
    addField('copyright', copyright);
    addField('approvalDate', approvalDate);
    addField('lastReviewDate', lastReviewDate);
    addField('effectivePeriod', effectivePeriod);
    addField('code', code);
    addField('instance', instance);
    addField('applicability', applicability);
    addField('propertyGroup', propertyGroup);
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
      'title',
      'derivedFromUri',
      'partOf',
      'replaces',
      'status',
      'experimental',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'copyright',
      'approvalDate',
      'lastReviewDate',
      'effectivePeriod',
      'code',
      'instance',
      'applicability',
      'propertyGroup',
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
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'derivedFromUri':
        if (derivedFromUri != null) {
          fields.addAll(derivedFromUri!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'replaces':
        if (replaces != null) {
          fields.addAll(replaces!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
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
          fields.add(code!);
        }
      case 'instance':
        if (instance != null) {
          fields.addAll(instance!);
        }
      case 'applicability':
        if (applicability != null) {
          fields.addAll(applicability!);
        }
      case 'propertyGroup':
        if (propertyGroup != null) {
          fields.addAll(propertyGroup!);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [...(contained ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'derivedFromUri':
        {
          if (child is List<FhirUriBuilder>) {
            // Replace or create new list
            derivedFromUri = child;
            return;
          } else if (child is FhirUriBuilder) {
            // Add single element to existing list or create new list
            derivedFromUri = [...(derivedFromUri ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'partOf':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            partOf = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            partOf = [...(partOf ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'replaces':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            replaces = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            replaces = [...(replaces ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'experimental':
        {
          if (child is FhirBooleanBuilder) {
            experimental = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'publisher':
        {
          if (child is FhirStringBuilder) {
            publisher = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            contact = [...(contact ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'useContext':
        {
          if (child is List<UsageContextBuilder>) {
            // Replace or create new list
            useContext = child;
            return;
          } else if (child is UsageContextBuilder) {
            // Add single element to existing list or create new list
            useContext = [...(useContext ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            jurisdiction = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            jurisdiction = [...(jurisdiction ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'copyright':
        {
          if (child is FhirMarkdownBuilder) {
            copyright = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'approvalDate':
        {
          if (child is FhirDateBuilder) {
            approvalDate = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lastReviewDate':
        {
          if (child is FhirDateBuilder) {
            lastReviewDate = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectivePeriod':
        {
          if (child is PeriodBuilder) {
            effectivePeriod = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'instance':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            instance = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            instance = [...(instance ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'applicability':
        {
          if (child is List<ChargeItemDefinitionApplicabilityBuilder>) {
            // Replace or create new list
            applicability = child;
            return;
          } else if (child is ChargeItemDefinitionApplicabilityBuilder) {
            // Add single element to existing list or create new list
            applicability = [...(applicability ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'propertyGroup':
        {
          if (child is List<ChargeItemDefinitionPropertyGroupBuilder>) {
            // Replace or create new list
            propertyGroup = child;
            return;
          } else if (child is ChargeItemDefinitionPropertyGroupBuilder) {
            // Add single element to existing list or create new list
            propertyGroup = [...(propertyGroup ?? []), child];
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
      case 'title':
        return ['FhirStringBuilder'];
      case 'derivedFromUri':
        return ['FhirUriBuilder'];
      case 'partOf':
        return ['FhirCanonicalBuilder'];
      case 'replaces':
        return ['FhirCanonicalBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'experimental':
        return ['FhirBooleanBuilder'];
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
      case 'copyright':
        return ['FhirMarkdownBuilder'];
      case 'approvalDate':
        return ['FhirDateBuilder'];
      case 'lastReviewDate':
        return ['FhirDateBuilder'];
      case 'effectivePeriod':
        return ['PeriodBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'instance':
        return ['ReferenceBuilder'];
      case 'applicability':
        return ['ChargeItemDefinitionApplicabilityBuilder'];
      case 'propertyGroup':
        return ['ChargeItemDefinitionPropertyGroupBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ChargeItemDefinitionBuilder]
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
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'derivedFromUri':
        {
          derivedFromUri = <FhirUriBuilder>[];
          return;
        }
      case 'partOf':
        {
          partOf = <FhirCanonicalBuilder>[];
          return;
        }
      case 'replaces':
        {
          replaces = <FhirCanonicalBuilder>[];
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
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'instance':
        {
          instance = <ReferenceBuilder>[];
          return;
        }
      case 'applicability':
        {
          applicability = <ChargeItemDefinitionApplicabilityBuilder>[];
          return;
        }
      case 'propertyGroup':
        {
          propertyGroup = <ChargeItemDefinitionPropertyGroupBuilder>[];
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
    bool url = false,
    bool identifier = false,
    bool version = false,
    bool title = false,
    bool derivedFromUri = false,
    bool partOf = false,
    bool replaces = false,
    bool status = false,
    bool experimental = false,
    bool date = false,
    bool publisher = false,
    bool contact = false,
    bool description = false,
    bool useContext = false,
    bool jurisdiction = false,
    bool copyright = false,
    bool approvalDate = false,
    bool lastReviewDate = false,
    bool effectivePeriod = false,
    bool code = false,
    bool instance = false,
    bool applicability = false,
    bool propertyGroup = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (url) this.url = null;
    if (identifier) this.identifier = null;
    if (version) this.version = null;
    if (title) this.title = null;
    if (derivedFromUri) this.derivedFromUri = null;
    if (partOf) this.partOf = null;
    if (replaces) this.replaces = null;
    if (status) this.status = null;
    if (experimental) this.experimental = null;
    if (date) this.date = null;
    if (publisher) this.publisher = null;
    if (contact) this.contact = null;
    if (description) this.description = null;
    if (useContext) this.useContext = null;
    if (jurisdiction) this.jurisdiction = null;
    if (copyright) this.copyright = null;
    if (approvalDate) this.approvalDate = null;
    if (lastReviewDate) this.lastReviewDate = null;
    if (effectivePeriod) this.effectivePeriod = null;
    if (code) this.code = null;
    if (instance) this.instance = null;
    if (applicability) this.applicability = null;
    if (propertyGroup) this.propertyGroup = null;
  }

  @override
  ChargeItemDefinitionBuilder clone() => throw UnimplementedError();
  @override
  ChargeItemDefinitionBuilder copyWith({
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
    FhirStringBuilder? title,
    List<FhirUriBuilder>? derivedFromUri,
    List<FhirCanonicalBuilder>? partOf,
    List<FhirCanonicalBuilder>? replaces,
    PublicationStatusBuilder? status,
    FhirBooleanBuilder? experimental,
    FhirDateTimeBuilder? date,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    FhirMarkdownBuilder? description,
    List<UsageContextBuilder>? useContext,
    List<CodeableConceptBuilder>? jurisdiction,
    FhirMarkdownBuilder? copyright,
    FhirDateBuilder? approvalDate,
    FhirDateBuilder? lastReviewDate,
    PeriodBuilder? effectivePeriod,
    CodeableConceptBuilder? code,
    List<ReferenceBuilder>? instance,
    List<ChargeItemDefinitionApplicabilityBuilder>? applicability,
    List<ChargeItemDefinitionPropertyGroupBuilder>? propertyGroup,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ChargeItemDefinitionBuilder(
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
      title: title ?? this.title,
      derivedFromUri: derivedFromUri ?? this.derivedFromUri,
      partOf: partOf ?? this.partOf,
      replaces: replaces ?? this.replaces,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      copyright: copyright ?? this.copyright,
      approvalDate: approvalDate ?? this.approvalDate,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      code: code ?? this.code,
      instance: instance ?? this.instance,
      applicability: applicability ?? this.applicability,
      propertyGroup: propertyGroup ?? this.propertyGroup,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ChargeItemDefinitionBuilder) {
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
      title,
      o.title,
    )) {
      return false;
    }
    if (!listEquals<FhirUriBuilder>(
      derivedFromUri,
      o.derivedFromUri,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
      replaces,
      o.replaces,
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
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      instance,
      o.instance,
    )) {
      return false;
    }
    if (!listEquals<ChargeItemDefinitionApplicabilityBuilder>(
      applicability,
      o.applicability,
    )) {
      return false;
    }
    if (!listEquals<ChargeItemDefinitionPropertyGroupBuilder>(
      propertyGroup,
      o.propertyGroup,
    )) {
      return false;
    }
    return true;
  }
}

/// [ChargeItemDefinitionApplicabilityBuilder]
/// Expressions that describe applicability criteria for the billing code.
class ChargeItemDefinitionApplicabilityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ChargeItemDefinitionApplicabilityBuilder]

  ChargeItemDefinitionApplicabilityBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.language,
    this.expression,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ChargeItemDefinition.applicability',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ChargeItemDefinitionApplicabilityBuilder.empty() =>
      ChargeItemDefinitionApplicabilityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemDefinitionApplicabilityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ChargeItemDefinition.applicability';
    return ChargeItemDefinitionApplicabilityBuilder(
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
      language: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'language',
        FhirStringBuilder.fromJson,
        '$objectPath.language',
      ),
      expression: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'expression',
        FhirStringBuilder.fromJson,
        '$objectPath.expression',
      ),
    );
  }

  /// Deserialize [ChargeItemDefinitionApplicabilityBuilder]
  /// from a [String] or [YamlMap] object
  factory ChargeItemDefinitionApplicabilityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItemDefinitionApplicabilityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItemDefinitionApplicabilityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItemDefinitionApplicabilityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItemDefinitionApplicabilityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemDefinitionApplicabilityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ChargeItemDefinitionApplicabilityBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemDefinitionApplicability';

  /// [description]
  /// A brief, natural language description of the condition that effectively
  /// communicates the intended semantics.
  FhirStringBuilder? description;

  /// [language]
  /// The media type of the language for the expression, e.g. "text/cql" for
  /// Clinical Query Language expressions or "text/fhirpath" for FHIRPath
  /// expressions.
  FhirStringBuilder? language;

  /// [expression]
  /// An expression that returns true or false, indicating whether the
  /// condition is satisfied. When using FHIRPath expressions, the %context
  /// environment variable must be replaced at runtime with the ChargeItem
  /// resource to which this definition is applied.
  FhirStringBuilder? expression;

  /// Converts a ChargeItemDefinitionApplicabilityBuilder to [ChargeItemDefinitionApplicability]
  ChargeItemDefinitionApplicability build() =>
      ChargeItemDefinitionApplicability.fromJson(toJson());

  /// Converts a [ChargeItemDefinitionApplicabilityBuilder] to a [Map<String, dynamic>]
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
    addField('language', language);
    addField('expression', expression);
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
      'language',
      'expression',
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
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'expression':
        if (expression != null) {
          fields.add(expression!);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is FhirStringBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'expression':
        {
          if (child is FhirStringBuilder) {
            expression = child;
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
      case 'language':
        return ['FhirStringBuilder'];
      case 'expression':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ChargeItemDefinitionApplicabilityBuilder]
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
      case 'language':
        {
          language = FhirStringBuilder.empty();
          return;
        }
      case 'expression':
        {
          expression = FhirStringBuilder.empty();
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
    bool description = false,
    bool language = false,
    bool expression = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (description) this.description = null;
    if (language) this.language = null;
    if (expression) this.expression = null;
  }

  @override
  ChargeItemDefinitionApplicabilityBuilder clone() =>
      throw UnimplementedError();
  @override
  ChargeItemDefinitionApplicabilityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? description,
    FhirStringBuilder? language,
    FhirStringBuilder? expression,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ChargeItemDefinitionApplicabilityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      language: language ?? this.language,
      expression: expression ?? this.expression,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ChargeItemDefinitionApplicabilityBuilder) {
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
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expression,
      o.expression,
    )) {
      return false;
    }
    return true;
  }
}

/// [ChargeItemDefinitionPropertyGroupBuilder]
/// Group of properties which are applicable under the same conditions. If
/// no applicability rules are established for the group, then all
/// properties always apply.
class ChargeItemDefinitionPropertyGroupBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ChargeItemDefinitionPropertyGroupBuilder]

  ChargeItemDefinitionPropertyGroupBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.applicability,
    this.priceComponent,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ChargeItemDefinition.propertyGroup',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ChargeItemDefinitionPropertyGroupBuilder.empty() =>
      ChargeItemDefinitionPropertyGroupBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemDefinitionPropertyGroupBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ChargeItemDefinition.propertyGroup';
    return ChargeItemDefinitionPropertyGroupBuilder(
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
      applicability: (json['applicability'] as List<dynamic>?)
          ?.map<ChargeItemDefinitionApplicabilityBuilder>(
            (v) => ChargeItemDefinitionApplicabilityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.applicability',
              },
            ),
          )
          .toList(),
      priceComponent: (json['priceComponent'] as List<dynamic>?)
          ?.map<ChargeItemDefinitionPriceComponentBuilder>(
            (v) => ChargeItemDefinitionPriceComponentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.priceComponent',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ChargeItemDefinitionPropertyGroupBuilder]
  /// from a [String] or [YamlMap] object
  factory ChargeItemDefinitionPropertyGroupBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItemDefinitionPropertyGroupBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItemDefinitionPropertyGroupBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItemDefinitionPropertyGroupBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItemDefinitionPropertyGroupBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemDefinitionPropertyGroupBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ChargeItemDefinitionPropertyGroupBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemDefinitionPropertyGroup';

  /// [applicability]
  /// Expressions that describe applicability criteria for the
  /// priceComponent.
  List<ChargeItemDefinitionApplicabilityBuilder>? applicability;

  /// [priceComponent]
  /// The price for a ChargeItem may be calculated as a base price with
  /// surcharges/deductions that apply in certain conditions. A
  /// ChargeItemDefinition resource that defines the prices, factors and
  /// conditions that apply to a billing code is currently under development.
  /// The priceComponent element can be used to offer transparency to the
  /// recipient of the Invoice of how the prices have been calculated.
  List<ChargeItemDefinitionPriceComponentBuilder>? priceComponent;

  /// Converts a ChargeItemDefinitionPropertyGroupBuilder to [ChargeItemDefinitionPropertyGroup]
  ChargeItemDefinitionPropertyGroup build() =>
      ChargeItemDefinitionPropertyGroup.fromJson(toJson());

  /// Converts a [ChargeItemDefinitionPropertyGroupBuilder] to a [Map<String, dynamic>]
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
    addField('applicability', applicability);
    addField('priceComponent', priceComponent);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'applicability',
      'priceComponent',
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
      case 'applicability':
        if (applicability != null) {
          fields.addAll(applicability!);
        }
      case 'priceComponent':
        if (priceComponent != null) {
          fields.addAll(priceComponent!);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'applicability':
        {
          if (child is List<ChargeItemDefinitionApplicabilityBuilder>) {
            // Replace or create new list
            applicability = child;
            return;
          } else if (child is ChargeItemDefinitionApplicabilityBuilder) {
            // Add single element to existing list or create new list
            applicability = [...(applicability ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'priceComponent':
        {
          if (child is List<ChargeItemDefinitionPriceComponentBuilder>) {
            // Replace or create new list
            priceComponent = child;
            return;
          } else if (child is ChargeItemDefinitionPriceComponentBuilder) {
            // Add single element to existing list or create new list
            priceComponent = [...(priceComponent ?? []), child];
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
      case 'applicability':
        return ['ChargeItemDefinitionApplicabilityBuilder'];
      case 'priceComponent':
        return ['ChargeItemDefinitionPriceComponentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ChargeItemDefinitionPropertyGroupBuilder]
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
      case 'applicability':
        {
          applicability = <ChargeItemDefinitionApplicabilityBuilder>[];
          return;
        }
      case 'priceComponent':
        {
          priceComponent = <ChargeItemDefinitionPriceComponentBuilder>[];
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
    bool applicability = false,
    bool priceComponent = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (applicability) this.applicability = null;
    if (priceComponent) this.priceComponent = null;
  }

  @override
  ChargeItemDefinitionPropertyGroupBuilder clone() =>
      throw UnimplementedError();
  @override
  ChargeItemDefinitionPropertyGroupBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<ChargeItemDefinitionApplicabilityBuilder>? applicability,
    List<ChargeItemDefinitionPriceComponentBuilder>? priceComponent,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ChargeItemDefinitionPropertyGroupBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      applicability: applicability ?? this.applicability,
      priceComponent: priceComponent ?? this.priceComponent,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ChargeItemDefinitionPropertyGroupBuilder) {
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
    if (!listEquals<ChargeItemDefinitionApplicabilityBuilder>(
      applicability,
      o.applicability,
    )) {
      return false;
    }
    if (!listEquals<ChargeItemDefinitionPriceComponentBuilder>(
      priceComponent,
      o.priceComponent,
    )) {
      return false;
    }
    return true;
  }
}

/// [ChargeItemDefinitionPriceComponentBuilder]
/// The price for a ChargeItem may be calculated as a base price with
/// surcharges/deductions that apply in certain conditions. A
/// ChargeItemDefinition resource that defines the prices, factors and
/// conditions that apply to a billing code is currently under development.
/// The priceComponent element can be used to offer transparency to the
/// recipient of the Invoice of how the prices have been calculated.
class ChargeItemDefinitionPriceComponentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ChargeItemDefinitionPriceComponentBuilder]

  ChargeItemDefinitionPriceComponentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.code,
    this.factor,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ChargeItemDefinition.propertyGroup.priceComponent',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ChargeItemDefinitionPriceComponentBuilder.empty() =>
      ChargeItemDefinitionPriceComponentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemDefinitionPriceComponentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ChargeItemDefinition.propertyGroup.priceComponent';
    return ChargeItemDefinitionPriceComponentBuilder(
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
      type: JsonParser.parsePrimitive<InvoicePriceComponentTypeBuilder>(
        json,
        'type',
        InvoicePriceComponentTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'factor',
        FhirDecimalBuilder.fromJson,
        '$objectPath.factor',
      ),
      amount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'amount',
        MoneyBuilder.fromJson,
        '$objectPath.amount',
      ),
    );
  }

  /// Deserialize [ChargeItemDefinitionPriceComponentBuilder]
  /// from a [String] or [YamlMap] object
  factory ChargeItemDefinitionPriceComponentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItemDefinitionPriceComponentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItemDefinitionPriceComponentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItemDefinitionPriceComponentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItemDefinitionPriceComponentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemDefinitionPriceComponentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ChargeItemDefinitionPriceComponentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemDefinitionPriceComponent';

  /// [type]
  /// This code identifies the type of the component.
  InvoicePriceComponentTypeBuilder? type;

  /// [code]
  /// A code that identifies the component. Codes may be used to
  /// differentiate between kinds of taxes, surcharges, discounts etc.
  CodeableConceptBuilder? code;

  /// [factor]
  /// The factor that has been applied on the base price for calculating this
  /// component.
  FhirDecimalBuilder? factor;

  /// [amount]
  /// The amount calculated for this component.
  MoneyBuilder? amount;

  /// Converts a ChargeItemDefinitionPriceComponentBuilder to [ChargeItemDefinitionPriceComponent]
  ChargeItemDefinitionPriceComponent build() =>
      ChargeItemDefinitionPriceComponent.fromJson(toJson());

  /// Converts a [ChargeItemDefinitionPriceComponentBuilder] to a [Map<String, dynamic>]
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
    addField('type', type);
    addField('code', code);
    addField('factor', factor);
    addField('amount', amount);
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
      'code',
      'factor',
      'amount',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is InvoicePriceComponentTypeBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimalBuilder) {
            factor = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amount':
        {
          if (child is MoneyBuilder) {
            amount = child;
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
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'factor':
        return ['FhirDecimalBuilder'];
      case 'amount':
        return ['MoneyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ChargeItemDefinitionPriceComponentBuilder]
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
          type = InvoicePriceComponentTypeBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'factor':
        {
          factor = FhirDecimalBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = MoneyBuilder.empty();
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
    bool code = false,
    bool factor = false,
    bool amount = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (code) this.code = null;
    if (factor) this.factor = null;
    if (amount) this.amount = null;
  }

  @override
  ChargeItemDefinitionPriceComponentBuilder clone() =>
      throw UnimplementedError();
  @override
  ChargeItemDefinitionPriceComponentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    InvoicePriceComponentTypeBuilder? type,
    CodeableConceptBuilder? code,
    FhirDecimalBuilder? factor,
    MoneyBuilder? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ChargeItemDefinitionPriceComponentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      code: code ?? this.code,
      factor: factor ?? this.factor,
      amount: amount ?? this.amount,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ChargeItemDefinitionPriceComponentBuilder) {
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
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    return true;
  }
}
