import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        InsurancePlan,
        InsurancePlanBenefit,
        InsurancePlanBenefit1,
        InsurancePlanContact,
        InsurancePlanCost,
        InsurancePlanCoverage,
        InsurancePlanGeneralCost,
        InsurancePlanLimit,
        InsurancePlanPlan,
        InsurancePlanSpecificCost,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [InsurancePlanBuilder]
/// Details of a Health Insurance product/plan provided by an organization.
class InsurancePlanBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [InsurancePlanBuilder]

  InsurancePlanBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.type,
    this.name,
    this.alias,
    this.period,
    this.ownedBy,
    this.administeredBy,
    this.coverageArea,
    this.contact,
    this.endpoint,
    this.network,
    this.coverage,
    this.plan,
  }) : super(
          objectPath: 'InsurancePlan',
          resourceType: R4ResourceType.InsurancePlan,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InsurancePlanBuilder.empty() => InsurancePlanBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan';
    return InsurancePlanBuilder(
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
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      alias: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'alias',
        FhirStringBuilder.fromJson,
        '$objectPath.alias',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      ownedBy: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'ownedBy',
        ReferenceBuilder.fromJson,
        '$objectPath.ownedBy',
      ),
      administeredBy: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'administeredBy',
        ReferenceBuilder.fromJson,
        '$objectPath.administeredBy',
      ),
      coverageArea: (json['coverageArea'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.coverageArea',
              },
            ),
          )
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<InsurancePlanContactBuilder>(
            (v) => InsurancePlanContactBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endpoint',
              },
            ),
          )
          .toList(),
      network: (json['network'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.network',
              },
            ),
          )
          .toList(),
      coverage: (json['coverage'] as List<dynamic>?)
          ?.map<InsurancePlanCoverageBuilder>(
            (v) => InsurancePlanCoverageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.coverage',
              },
            ),
          )
          .toList(),
      plan: (json['plan'] as List<dynamic>?)
          ?.map<InsurancePlanPlanBuilder>(
            (v) => InsurancePlanPlanBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.plan',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InsurancePlanBuilder]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlan';

  /// [identifier]
  /// Business identifiers assigned to this health insurance product which
  /// remain constant as the resource is updated and propagates from server
  /// to server.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The current state of the health insurance product.
  PublicationStatusBuilder? status;

  /// [type]
  /// The kind of health insurance product.
  List<CodeableConceptBuilder>? type;

  /// [name]
  /// Official name of the health insurance product as designated by the
  /// owner.
  FhirStringBuilder? name;

  /// [alias]
  /// A list of alternate names that the product is known as, or was known as
  /// in the past.
  List<FhirStringBuilder>? alias;

  /// [period]
  /// The period of time that the health insurance product is available.
  PeriodBuilder? period;

  /// [ownedBy]
  /// The entity that is providing the health insurance product and
  /// underwriting the risk. This is typically an insurance carriers, other
  /// third-party payers, or health plan sponsors comonly referred to as
  /// 'payers'.
  ReferenceBuilder? ownedBy;

  /// [administeredBy]
  /// An organization which administer other services such as underwriting,
  /// customer service and/or claims processing on behalf of the health
  /// insurance product owner.
  ReferenceBuilder? administeredBy;

  /// [coverageArea]
  /// The geographic region in which a health insurance product's benefits
  /// apply.
  List<ReferenceBuilder>? coverageArea;

  /// [contact]
  /// The contact for the health insurance product for a certain purpose.
  List<InsurancePlanContactBuilder>? contact;

  /// [endpoint]
  /// The technical endpoints providing access to services operated for the
  /// health insurance product.
  List<ReferenceBuilder>? endpoint;

  /// [network]
  /// Reference to the network included in the health insurance product.
  List<ReferenceBuilder>? network;

  /// [coverage]
  /// Details about the coverage offered by the insurance product.
  List<InsurancePlanCoverageBuilder>? coverage;

  /// [plan]
  /// Details about an insurance plan.
  List<InsurancePlanPlanBuilder>? plan;

  /// converts a [InsurancePlanBuilder]
  /// to [InsurancePlan]
  @override
  InsurancePlan build() => InsurancePlan.fromJson(toJson());

  /// converts a [InsurancePlanBuilder]
  /// to [Map<String, dynamic>]
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
    addField('status', status);
    addField('type', type);
    addField('name', name);
    addField('alias', alias);
    addField('period', period);
    addField('ownedBy', ownedBy);
    addField('administeredBy', administeredBy);
    addField('coverageArea', coverageArea);
    addField('contact', contact);
    addField('endpoint', endpoint);
    addField('network', network);
    addField('coverage', coverage);
    addField('plan', plan);
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
      'name',
      'alias',
      'period',
      'ownedBy',
      'administeredBy',
      'coverageArea',
      'contact',
      'endpoint',
      'network',
      'coverage',
      'plan',
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
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'alias':
        if (alias != null) {
          fields.addAll(alias!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'ownedBy':
        if (ownedBy != null) {
          fields.add(ownedBy!);
        }
      case 'administeredBy':
        if (administeredBy != null) {
          fields.add(administeredBy!);
        }
      case 'coverageArea':
        if (coverageArea != null) {
          fields.addAll(coverageArea!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
        }
      case 'network':
        if (network != null) {
          fields.addAll(network!);
        }
      case 'coverage':
        if (coverage != null) {
          fields.addAll(coverage!);
        }
      case 'plan':
        if (plan != null) {
          fields.addAll(plan!);
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
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [...(type ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'alias':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            alias = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            alias = [...(alias ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'ownedBy':
        {
          if (child is ReferenceBuilder) {
            ownedBy = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'administeredBy':
        {
          if (child is ReferenceBuilder) {
            administeredBy = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'coverageArea':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            coverageArea = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            coverageArea = [...(coverageArea ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is List<InsurancePlanContactBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is InsurancePlanContactBuilder) {
            // Add single element to existing list or create new list
            contact = [...(contact ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'endpoint':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            endpoint = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            endpoint = [...(endpoint ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'network':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            network = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            network = [...(network ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'coverage':
        {
          if (child is List<InsurancePlanCoverageBuilder>) {
            // Replace or create new list
            coverage = child;
            return;
          } else if (child is InsurancePlanCoverageBuilder) {
            // Add single element to existing list or create new list
            coverage = [...(coverage ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'plan':
        {
          if (child is List<InsurancePlanPlanBuilder>) {
            // Replace or create new list
            plan = child;
            return;
          } else if (child is InsurancePlanPlanBuilder) {
            // Add single element to existing list or create new list
            plan = [...(plan ?? []), child];
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
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'alias':
        return ['FhirStringBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'ownedBy':
        return ['ReferenceBuilder'];
      case 'administeredBy':
        return ['ReferenceBuilder'];
      case 'coverageArea':
        return ['ReferenceBuilder'];
      case 'contact':
        return ['InsurancePlanContactBuilder'];
      case 'endpoint':
        return ['ReferenceBuilder'];
      case 'network':
        return ['ReferenceBuilder'];
      case 'coverage':
        return ['InsurancePlanCoverageBuilder'];
      case 'plan':
        return ['InsurancePlanPlanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InsurancePlanBuilder]
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
      case 'status':
        {
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'alias':
        {
          alias = <FhirStringBuilder>[];
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'ownedBy':
        {
          ownedBy = ReferenceBuilder.empty();
          return;
        }
      case 'administeredBy':
        {
          administeredBy = ReferenceBuilder.empty();
          return;
        }
      case 'coverageArea':
        {
          coverageArea = <ReferenceBuilder>[];
          return;
        }
      case 'contact':
        {
          contact = <InsurancePlanContactBuilder>[];
          return;
        }
      case 'endpoint':
        {
          endpoint = <ReferenceBuilder>[];
          return;
        }
      case 'network':
        {
          network = <ReferenceBuilder>[];
          return;
        }
      case 'coverage':
        {
          coverage = <InsurancePlanCoverageBuilder>[];
          return;
        }
      case 'plan':
        {
          plan = <InsurancePlanPlanBuilder>[];
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
    bool identifier = false,
    bool status = false,
    bool type = false,
    bool name = false,
    bool alias = false,
    bool period = false,
    bool ownedBy = false,
    bool administeredBy = false,
    bool coverageArea = false,
    bool contact = false,
    bool endpoint = false,
    bool network = false,
    bool coverage = false,
    bool plan = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (status) this.status = null;
    if (type) this.type = null;
    if (name) this.name = null;
    if (alias) this.alias = null;
    if (period) this.period = null;
    if (ownedBy) this.ownedBy = null;
    if (administeredBy) this.administeredBy = null;
    if (coverageArea) this.coverageArea = null;
    if (contact) this.contact = null;
    if (endpoint) this.endpoint = null;
    if (network) this.network = null;
    if (coverage) this.coverage = null;
    if (plan) this.plan = null;
  }

  @override
  InsurancePlanBuilder clone() => throw UnimplementedError();
  @override
  InsurancePlanBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    PublicationStatusBuilder? status,
    List<CodeableConceptBuilder>? type,
    FhirStringBuilder? name,
    List<FhirStringBuilder>? alias,
    PeriodBuilder? period,
    ReferenceBuilder? ownedBy,
    ReferenceBuilder? administeredBy,
    List<ReferenceBuilder>? coverageArea,
    List<InsurancePlanContactBuilder>? contact,
    List<ReferenceBuilder>? endpoint,
    List<ReferenceBuilder>? network,
    List<InsurancePlanCoverageBuilder>? coverage,
    List<InsurancePlanPlanBuilder>? plan,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = InsurancePlanBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      type: type ?? this.type,
      name: name ?? this.name,
      alias: alias ?? this.alias,
      period: period ?? this.period,
      ownedBy: ownedBy ?? this.ownedBy,
      administeredBy: administeredBy ?? this.administeredBy,
      coverageArea: coverageArea ?? this.coverageArea,
      contact: contact ?? this.contact,
      endpoint: endpoint ?? this.endpoint,
      network: network ?? this.network,
      coverage: coverage ?? this.coverage,
      plan: plan ?? this.plan,
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
    if (o is! InsurancePlanBuilder) {
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      alias,
      o.alias,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      ownedBy,
      o.ownedBy,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      administeredBy,
      o.administeredBy,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      coverageArea,
      o.coverageArea,
    )) {
      return false;
    }
    if (!listEquals<InsurancePlanContactBuilder>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      network,
      o.network,
    )) {
      return false;
    }
    if (!listEquals<InsurancePlanCoverageBuilder>(
      coverage,
      o.coverage,
    )) {
      return false;
    }
    if (!listEquals<InsurancePlanPlanBuilder>(
      plan,
      o.plan,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanContactBuilder]
/// The contact for the health insurance product for a certain purpose.
class InsurancePlanContactBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InsurancePlanContactBuilder]

  InsurancePlanContactBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InsurancePlan.contact',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InsurancePlanContactBuilder.empty() => InsurancePlanContactBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanContactBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.contact';
    return InsurancePlanContactBuilder(
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
      purpose: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'purpose',
        CodeableConceptBuilder.fromJson,
        '$objectPath.purpose',
      ),
      name: JsonParser.parseObject<HumanNameBuilder>(
        json,
        'name',
        HumanNameBuilder.fromJson,
        '$objectPath.name',
      ),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPointBuilder>(
            (v) => ContactPointBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.telecom',
              },
            ),
          )
          .toList(),
      address: JsonParser.parseObject<AddressBuilder>(
        json,
        'address',
        AddressBuilder.fromJson,
        '$objectPath.address',
      ),
    );
  }

  /// Deserialize [InsurancePlanContactBuilder]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanContactBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanContactBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanContactBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanContactBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanContactBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanContactBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanContactBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanContact';

  /// [purpose]
  /// Indicates a purpose for which the contact can be reached.
  CodeableConceptBuilder? purpose;

  /// [name]
  /// A name associated with the contact.
  HumanNameBuilder? name;

  /// [telecom]
  /// A contact detail (e.g. a telephone number or an email address) by which
  /// the party may be contacted.
  List<ContactPointBuilder>? telecom;

  /// [address]
  /// Visiting or postal addresses for the contact.
  AddressBuilder? address;

  /// converts a [InsurancePlanContactBuilder]
  /// to [InsurancePlanContact]
  @override
  InsurancePlanContact build() => InsurancePlanContact.fromJson(toJson());

  /// converts a [InsurancePlanContactBuilder]
  /// to [Map<String, dynamic>]
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
    addField('purpose', purpose);
    addField('name', name);
    addField('telecom', telecom);
    addField('address', address);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'purpose',
      'name',
      'telecom',
      'address',
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
      case 'purpose':
        if (purpose != null) {
          fields.add(purpose!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'telecom':
        if (telecom != null) {
          fields.addAll(telecom!);
        }
      case 'address':
        if (address != null) {
          fields.add(address!);
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
      case 'purpose':
        {
          if (child is CodeableConceptBuilder) {
            purpose = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is HumanNameBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'telecom':
        {
          if (child is List<ContactPointBuilder>) {
            // Replace or create new list
            telecom = child;
            return;
          } else if (child is ContactPointBuilder) {
            // Add single element to existing list or create new list
            telecom = [...(telecom ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'address':
        {
          if (child is AddressBuilder) {
            address = child;
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
      case 'purpose':
        return ['CodeableConceptBuilder'];
      case 'name':
        return ['HumanNameBuilder'];
      case 'telecom':
        return ['ContactPointBuilder'];
      case 'address':
        return ['AddressBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InsurancePlanContactBuilder]
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
      case 'purpose':
        {
          purpose = CodeableConceptBuilder.empty();
          return;
        }
      case 'name':
        {
          name = HumanNameBuilder.empty();
          return;
        }
      case 'telecom':
        {
          telecom = <ContactPointBuilder>[];
          return;
        }
      case 'address':
        {
          address = AddressBuilder.empty();
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
    bool purpose = false,
    bool name = false,
    bool telecom = false,
    bool address = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (purpose) this.purpose = null;
    if (name) this.name = null;
    if (telecom) this.telecom = null;
    if (address) this.address = null;
  }

  @override
  InsurancePlanContactBuilder clone() => throw UnimplementedError();
  @override
  InsurancePlanContactBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? purpose,
    HumanNameBuilder? name,
    List<ContactPointBuilder>? telecom,
    AddressBuilder? address,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InsurancePlanContactBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      purpose: purpose ?? this.purpose,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      address: address ?? this.address,
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
    if (o is! InsurancePlanContactBuilder) {
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
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<ContactPointBuilder>(
      telecom,
      o.telecom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      address,
      o.address,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanCoverageBuilder]
/// Details about the coverage offered by the insurance product.
class InsurancePlanCoverageBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InsurancePlanCoverageBuilder]

  InsurancePlanCoverageBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.network,
    this.benefit,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InsurancePlan.coverage',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InsurancePlanCoverageBuilder.empty() =>
      InsurancePlanCoverageBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanCoverageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.coverage';
    return InsurancePlanCoverageBuilder(
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
      network: (json['network'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.network',
              },
            ),
          )
          .toList(),
      benefit: (json['benefit'] as List<dynamic>?)
          ?.map<InsurancePlanBenefitBuilder>(
            (v) => InsurancePlanBenefitBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.benefit',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InsurancePlanCoverageBuilder]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanCoverageBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanCoverageBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanCoverageBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanCoverageBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanCoverageBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanCoverageBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanCoverageBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanCoverage';

  /// [type]
  /// Type of coverage (Medical; Dental; Mental Health; Substance Abuse;
  /// Vision; Drug; Short Term; Long Term Care; Hospice; Home Health).
  CodeableConceptBuilder? type;

  /// [network]
  /// Reference to the network that providing the type of coverage.
  List<ReferenceBuilder>? network;

  /// [benefit]
  /// Specific benefits under this type of coverage.
  List<InsurancePlanBenefitBuilder>? benefit;

  /// converts a [InsurancePlanCoverageBuilder]
  /// to [InsurancePlanCoverage]
  @override
  InsurancePlanCoverage build() => InsurancePlanCoverage.fromJson(toJson());

  /// converts a [InsurancePlanCoverageBuilder]
  /// to [Map<String, dynamic>]
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
    addField('network', network);
    addField('benefit', benefit);
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
      'network',
      'benefit',
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
      case 'network':
        if (network != null) {
          fields.addAll(network!);
        }
      case 'benefit':
        if (benefit != null) {
          fields.addAll(benefit!);
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
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'network':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            network = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            network = [...(network ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'benefit':
        {
          if (child is List<InsurancePlanBenefitBuilder>) {
            // Replace or create new list
            benefit = child;
            return;
          } else if (child is InsurancePlanBenefitBuilder) {
            // Add single element to existing list or create new list
            benefit = [...(benefit ?? []), child];
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
        return ['CodeableConceptBuilder'];
      case 'network':
        return ['ReferenceBuilder'];
      case 'benefit':
        return ['InsurancePlanBenefitBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InsurancePlanCoverageBuilder]
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
      case 'network':
        {
          network = <ReferenceBuilder>[];
          return;
        }
      case 'benefit':
        {
          benefit = <InsurancePlanBenefitBuilder>[];
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
    bool network = false,
    bool benefit = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (network) this.network = null;
    if (benefit) this.benefit = null;
  }

  @override
  InsurancePlanCoverageBuilder clone() => throw UnimplementedError();
  @override
  InsurancePlanCoverageBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    List<ReferenceBuilder>? network,
    List<InsurancePlanBenefitBuilder>? benefit,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InsurancePlanCoverageBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      network: network ?? this.network,
      benefit: benefit ?? this.benefit,
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
    if (o is! InsurancePlanCoverageBuilder) {
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
    if (!listEquals<ReferenceBuilder>(
      network,
      o.network,
    )) {
      return false;
    }
    if (!listEquals<InsurancePlanBenefitBuilder>(
      benefit,
      o.benefit,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanBenefitBuilder]
/// Specific benefits under this type of coverage.
class InsurancePlanBenefitBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InsurancePlanBenefitBuilder]

  InsurancePlanBenefitBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.requirement,
    this.limit,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InsurancePlan.coverage.benefit',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InsurancePlanBenefitBuilder.empty() => InsurancePlanBenefitBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanBenefitBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.coverage.benefit';
    return InsurancePlanBenefitBuilder(
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
      requirement: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'requirement',
        FhirStringBuilder.fromJson,
        '$objectPath.requirement',
      ),
      limit: (json['limit'] as List<dynamic>?)
          ?.map<InsurancePlanLimitBuilder>(
            (v) => InsurancePlanLimitBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.limit',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InsurancePlanBenefitBuilder]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanBenefitBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanBenefitBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanBenefitBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanBenefitBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanBenefitBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanBenefitBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanBenefitBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanBenefit';

  /// [type]
  /// Type of benefit (primary care; speciality care; inpatient; outpatient).
  CodeableConceptBuilder? type;

  /// [requirement]
  /// The referral requirements to have access/coverage for this benefit.
  FhirStringBuilder? requirement;

  /// [limit]
  /// The specific limits on the benefit.
  List<InsurancePlanLimitBuilder>? limit;

  /// converts a [InsurancePlanBenefitBuilder]
  /// to [InsurancePlanBenefit]
  @override
  InsurancePlanBenefit build() => InsurancePlanBenefit.fromJson(toJson());

  /// converts a [InsurancePlanBenefitBuilder]
  /// to [Map<String, dynamic>]
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
    addField('requirement', requirement);
    addField('limit', limit);
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
      'requirement',
      'limit',
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
      case 'requirement':
        if (requirement != null) {
          fields.add(requirement!);
        }
      case 'limit':
        if (limit != null) {
          fields.addAll(limit!);
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
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'requirement':
        {
          if (child is FhirStringBuilder) {
            requirement = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'limit':
        {
          if (child is List<InsurancePlanLimitBuilder>) {
            // Replace or create new list
            limit = child;
            return;
          } else if (child is InsurancePlanLimitBuilder) {
            // Add single element to existing list or create new list
            limit = [...(limit ?? []), child];
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
        return ['CodeableConceptBuilder'];
      case 'requirement':
        return ['FhirStringBuilder'];
      case 'limit':
        return ['InsurancePlanLimitBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InsurancePlanBenefitBuilder]
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
      case 'requirement':
        {
          requirement = FhirStringBuilder.empty();
          return;
        }
      case 'limit':
        {
          limit = <InsurancePlanLimitBuilder>[];
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
    bool requirement = false,
    bool limit = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (requirement) this.requirement = null;
    if (limit) this.limit = null;
  }

  @override
  InsurancePlanBenefitBuilder clone() => throw UnimplementedError();
  @override
  InsurancePlanBenefitBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    FhirStringBuilder? requirement,
    List<InsurancePlanLimitBuilder>? limit,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InsurancePlanBenefitBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      requirement: requirement ?? this.requirement,
      limit: limit ?? this.limit,
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
    if (o is! InsurancePlanBenefitBuilder) {
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
      requirement,
      o.requirement,
    )) {
      return false;
    }
    if (!listEquals<InsurancePlanLimitBuilder>(
      limit,
      o.limit,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanLimitBuilder]
/// The specific limits on the benefit.
class InsurancePlanLimitBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InsurancePlanLimitBuilder]

  InsurancePlanLimitBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.value,
    this.code,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InsurancePlan.coverage.benefit.limit',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InsurancePlanLimitBuilder.empty() => InsurancePlanLimitBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanLimitBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.coverage.benefit.limit';
    return InsurancePlanLimitBuilder(
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
      value: JsonParser.parseObject<QuantityBuilder>(
        json,
        'value',
        QuantityBuilder.fromJson,
        '$objectPath.value',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
    );
  }

  /// Deserialize [InsurancePlanLimitBuilder]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanLimitBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanLimitBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanLimitBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanLimitBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanLimitBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanLimitBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanLimitBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanLimit';

  /// [value]
  /// The maximum amount of a service item a plan will pay for a covered
  /// benefit. For examples. wellness visits, or eyeglasses.
  QuantityBuilder? value;

  /// [code]
  /// The specific limit on the benefit.
  CodeableConceptBuilder? code;

  /// converts a [InsurancePlanLimitBuilder]
  /// to [InsurancePlanLimit]
  @override
  InsurancePlanLimit build() => InsurancePlanLimit.fromJson(toJson());

  /// converts a [InsurancePlanLimitBuilder]
  /// to [Map<String, dynamic>]
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
    addField('value', value);
    addField('code', code);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'value',
      'code',
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
        if (value != null) {
          fields.add(value!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
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
      case 'value':
        {
          if (child is QuantityBuilder) {
            value = child;
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
        return ['QuantityBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InsurancePlanLimitBuilder]
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
        {
          value = QuantityBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
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
    bool value = false,
    bool code = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (value) this.value = null;
    if (code) this.code = null;
  }

  @override
  InsurancePlanLimitBuilder clone() => throw UnimplementedError();
  @override
  InsurancePlanLimitBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    QuantityBuilder? value,
    CodeableConceptBuilder? code,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InsurancePlanLimitBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
      code: code ?? this.code,
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
    if (o is! InsurancePlanLimitBuilder) {
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
      value,
      o.value,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanPlanBuilder]
/// Details about an insurance plan.
class InsurancePlanPlanBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InsurancePlanPlanBuilder]

  InsurancePlanPlanBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.coverageArea,
    this.network,
    this.generalCost,
    this.specificCost,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InsurancePlan.plan',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InsurancePlanPlanBuilder.empty() => InsurancePlanPlanBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanPlanBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.plan';
    return InsurancePlanPlanBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      coverageArea: (json['coverageArea'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.coverageArea',
              },
            ),
          )
          .toList(),
      network: (json['network'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.network',
              },
            ),
          )
          .toList(),
      generalCost: (json['generalCost'] as List<dynamic>?)
          ?.map<InsurancePlanGeneralCostBuilder>(
            (v) => InsurancePlanGeneralCostBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.generalCost',
              },
            ),
          )
          .toList(),
      specificCost: (json['specificCost'] as List<dynamic>?)
          ?.map<InsurancePlanSpecificCostBuilder>(
            (v) => InsurancePlanSpecificCostBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specificCost',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InsurancePlanPlanBuilder]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanPlanBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanPlanBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanPlanBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanPlanBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanPlanBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanPlanBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanPlanBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanPlan';

  /// [identifier]
  /// Business identifiers assigned to this health insurance plan which
  /// remain constant as the resource is updated and propagates from server
  /// to server.
  List<IdentifierBuilder>? identifier;

  /// [type]
  /// Type of plan. For example, "Platinum" or "High Deductable".
  CodeableConceptBuilder? type;

  /// [coverageArea]
  /// The geographic region in which a health insurance plan's benefits
  /// apply.
  List<ReferenceBuilder>? coverageArea;

  /// [network]
  /// Reference to the network that providing the type of coverage.
  List<ReferenceBuilder>? network;

  /// [generalCost]
  /// Overall costs associated with the plan.
  List<InsurancePlanGeneralCostBuilder>? generalCost;

  /// [specificCost]
  /// Costs associated with the coverage provided by the product.
  List<InsurancePlanSpecificCostBuilder>? specificCost;

  /// converts a [InsurancePlanPlanBuilder]
  /// to [InsurancePlanPlan]
  @override
  InsurancePlanPlan build() => InsurancePlanPlan.fromJson(toJson());

  /// converts a [InsurancePlanPlanBuilder]
  /// to [Map<String, dynamic>]
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
    addField('type', type);
    addField('coverageArea', coverageArea);
    addField('network', network);
    addField('generalCost', generalCost);
    addField('specificCost', specificCost);
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
      'type',
      'coverageArea',
      'network',
      'generalCost',
      'specificCost',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'coverageArea':
        if (coverageArea != null) {
          fields.addAll(coverageArea!);
        }
      case 'network':
        if (network != null) {
          fields.addAll(network!);
        }
      case 'generalCost':
        if (generalCost != null) {
          fields.addAll(generalCost!);
        }
      case 'specificCost':
        if (specificCost != null) {
          fields.addAll(specificCost!);
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'coverageArea':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            coverageArea = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            coverageArea = [...(coverageArea ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'network':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            network = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            network = [...(network ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'generalCost':
        {
          if (child is List<InsurancePlanGeneralCostBuilder>) {
            // Replace or create new list
            generalCost = child;
            return;
          } else if (child is InsurancePlanGeneralCostBuilder) {
            // Add single element to existing list or create new list
            generalCost = [...(generalCost ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'specificCost':
        {
          if (child is List<InsurancePlanSpecificCostBuilder>) {
            // Replace or create new list
            specificCost = child;
            return;
          } else if (child is InsurancePlanSpecificCostBuilder) {
            // Add single element to existing list or create new list
            specificCost = [...(specificCost ?? []), child];
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'coverageArea':
        return ['ReferenceBuilder'];
      case 'network':
        return ['ReferenceBuilder'];
      case 'generalCost':
        return ['InsurancePlanGeneralCostBuilder'];
      case 'specificCost':
        return ['InsurancePlanSpecificCostBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InsurancePlanPlanBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'coverageArea':
        {
          coverageArea = <ReferenceBuilder>[];
          return;
        }
      case 'network':
        {
          network = <ReferenceBuilder>[];
          return;
        }
      case 'generalCost':
        {
          generalCost = <InsurancePlanGeneralCostBuilder>[];
          return;
        }
      case 'specificCost':
        {
          specificCost = <InsurancePlanSpecificCostBuilder>[];
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
    bool identifier = false,
    bool type = false,
    bool coverageArea = false,
    bool network = false,
    bool generalCost = false,
    bool specificCost = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (type) this.type = null;
    if (coverageArea) this.coverageArea = null;
    if (network) this.network = null;
    if (generalCost) this.generalCost = null;
    if (specificCost) this.specificCost = null;
  }

  @override
  InsurancePlanPlanBuilder clone() => throw UnimplementedError();
  @override
  InsurancePlanPlanBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    CodeableConceptBuilder? type,
    List<ReferenceBuilder>? coverageArea,
    List<ReferenceBuilder>? network,
    List<InsurancePlanGeneralCostBuilder>? generalCost,
    List<InsurancePlanSpecificCostBuilder>? specificCost,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InsurancePlanPlanBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      coverageArea: coverageArea ?? this.coverageArea,
      network: network ?? this.network,
      generalCost: generalCost ?? this.generalCost,
      specificCost: specificCost ?? this.specificCost,
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
    if (o is! InsurancePlanPlanBuilder) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      coverageArea,
      o.coverageArea,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      network,
      o.network,
    )) {
      return false;
    }
    if (!listEquals<InsurancePlanGeneralCostBuilder>(
      generalCost,
      o.generalCost,
    )) {
      return false;
    }
    if (!listEquals<InsurancePlanSpecificCostBuilder>(
      specificCost,
      o.specificCost,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanGeneralCostBuilder]
/// Overall costs associated with the plan.
class InsurancePlanGeneralCostBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InsurancePlanGeneralCostBuilder]

  InsurancePlanGeneralCostBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.groupSize,
    this.cost,
    this.comment,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InsurancePlan.plan.generalCost',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InsurancePlanGeneralCostBuilder.empty() =>
      InsurancePlanGeneralCostBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanGeneralCostBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.plan.generalCost';
    return InsurancePlanGeneralCostBuilder(
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
      groupSize: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'groupSize',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.groupSize',
      ),
      cost: JsonParser.parseObject<MoneyBuilder>(
        json,
        'cost',
        MoneyBuilder.fromJson,
        '$objectPath.cost',
      ),
      comment: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'comment',
        FhirStringBuilder.fromJson,
        '$objectPath.comment',
      ),
    );
  }

  /// Deserialize [InsurancePlanGeneralCostBuilder]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanGeneralCostBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanGeneralCostBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanGeneralCostBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanGeneralCostBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanGeneralCostBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanGeneralCostBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanGeneralCostBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanGeneralCost';

  /// [type]
  /// Type of cost.
  CodeableConceptBuilder? type;

  /// [groupSize]
  /// Number of participants enrolled in the plan.
  FhirPositiveIntBuilder? groupSize;

  /// [cost]
  /// Value of the cost.
  MoneyBuilder? cost;

  /// [comment]
  /// Additional information about the general costs associated with this
  /// plan.
  FhirStringBuilder? comment;

  /// converts a [InsurancePlanGeneralCostBuilder]
  /// to [InsurancePlanGeneralCost]
  @override
  InsurancePlanGeneralCost build() =>
      InsurancePlanGeneralCost.fromJson(toJson());

  /// converts a [InsurancePlanGeneralCostBuilder]
  /// to [Map<String, dynamic>]
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
    addField('groupSize', groupSize);
    addField('cost', cost);
    addField('comment', comment);
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
      'groupSize',
      'cost',
      'comment',
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
      case 'groupSize':
        if (groupSize != null) {
          fields.add(groupSize!);
        }
      case 'cost':
        if (cost != null) {
          fields.add(cost!);
        }
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
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
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'groupSize':
        {
          if (child is FhirPositiveIntBuilder) {
            groupSize = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'cost':
        {
          if (child is MoneyBuilder) {
            cost = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'comment':
        {
          if (child is FhirStringBuilder) {
            comment = child;
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
        return ['CodeableConceptBuilder'];
      case 'groupSize':
        return ['FhirPositiveIntBuilder'];
      case 'cost':
        return ['MoneyBuilder'];
      case 'comment':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InsurancePlanGeneralCostBuilder]
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
      case 'groupSize':
        {
          groupSize = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'cost':
        {
          cost = MoneyBuilder.empty();
          return;
        }
      case 'comment':
        {
          comment = FhirStringBuilder.empty();
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
    bool groupSize = false,
    bool cost = false,
    bool comment = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (groupSize) this.groupSize = null;
    if (cost) this.cost = null;
    if (comment) this.comment = null;
  }

  @override
  InsurancePlanGeneralCostBuilder clone() => throw UnimplementedError();
  @override
  InsurancePlanGeneralCostBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    FhirPositiveIntBuilder? groupSize,
    MoneyBuilder? cost,
    FhirStringBuilder? comment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InsurancePlanGeneralCostBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      groupSize: groupSize ?? this.groupSize,
      cost: cost ?? this.cost,
      comment: comment ?? this.comment,
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
    if (o is! InsurancePlanGeneralCostBuilder) {
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
      groupSize,
      o.groupSize,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cost,
      o.cost,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanSpecificCostBuilder]
/// Costs associated with the coverage provided by the product.
class InsurancePlanSpecificCostBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InsurancePlanSpecificCostBuilder]

  InsurancePlanSpecificCostBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.benefit,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InsurancePlan.plan.specificCost',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InsurancePlanSpecificCostBuilder.empty() =>
      InsurancePlanSpecificCostBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanSpecificCostBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.plan.specificCost';
    return InsurancePlanSpecificCostBuilder(
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
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      benefit: (json['benefit'] as List<dynamic>?)
          ?.map<InsurancePlanBenefitBuilder>(
            (v) => InsurancePlanBenefitBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.benefit',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InsurancePlanSpecificCostBuilder]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanSpecificCostBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanSpecificCostBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanSpecificCostBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanSpecificCostBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanSpecificCostBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanSpecificCostBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanSpecificCostBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanSpecificCost';

  /// [category]
  /// General category of benefit (Medical; Dental; Vision; Drug; Mental
  /// Health; Substance Abuse; Hospice, Home Health).
  CodeableConceptBuilder? category;

  /// [benefit]
  /// List of the specific benefits under this category of benefit.
  List<InsurancePlanBenefitBuilder>? benefit;

  /// converts a [InsurancePlanSpecificCostBuilder]
  /// to [InsurancePlanSpecificCost]
  @override
  InsurancePlanSpecificCost build() =>
      InsurancePlanSpecificCost.fromJson(toJson());

  /// converts a [InsurancePlanSpecificCostBuilder]
  /// to [Map<String, dynamic>]
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
    addField('category', category);
    addField('benefit', benefit);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'category',
      'benefit',
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
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'benefit':
        if (benefit != null) {
          fields.addAll(benefit!);
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
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'benefit':
        {
          if (child is List<InsurancePlanBenefitBuilder>) {
            // Replace or create new list
            benefit = child;
            return;
          } else if (child is InsurancePlanBenefitBuilder) {
            // Add single element to existing list or create new list
            benefit = [...(benefit ?? []), child];
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
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'benefit':
        return ['InsurancePlanBenefitBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InsurancePlanSpecificCostBuilder]
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
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'benefit':
        {
          benefit = <InsurancePlanBenefitBuilder>[];
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
    bool category = false,
    bool benefit = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (category) this.category = null;
    if (benefit) this.benefit = null;
  }

  @override
  InsurancePlanSpecificCostBuilder clone() => throw UnimplementedError();
  @override
  InsurancePlanSpecificCostBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? category,
    List<InsurancePlanBenefitBuilder>? benefit,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InsurancePlanSpecificCostBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      benefit: benefit ?? this.benefit,
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
    if (o is! InsurancePlanSpecificCostBuilder) {
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
      category,
      o.category,
    )) {
      return false;
    }
    if (!listEquals<InsurancePlanBenefitBuilder>(
      benefit,
      o.benefit,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanBenefit1Builder]
/// List of the specific benefits under this category of benefit.
class InsurancePlanBenefit1Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InsurancePlanBenefit1Builder]

  InsurancePlanBenefit1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.cost,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InsurancePlan.plan.specificCost.benefit',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InsurancePlanBenefit1Builder.empty() =>
      InsurancePlanBenefit1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanBenefit1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.plan.specificCost.benefit';
    return InsurancePlanBenefit1Builder(
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
      cost: (json['cost'] as List<dynamic>?)
          ?.map<InsurancePlanCostBuilder>(
            (v) => InsurancePlanCostBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.cost',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InsurancePlanBenefit1Builder]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanBenefit1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanBenefit1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanBenefit1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanBenefit1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanBenefit1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanBenefit1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanBenefit1Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanBenefit1';

  /// [type]
  /// Type of specific benefit (preventative; primary care office visit;
  /// speciality office visit; hospitalization; emergency room; urgent care).
  CodeableConceptBuilder? type;

  /// [cost]
  /// List of the costs associated with a specific benefit.
  List<InsurancePlanCostBuilder>? cost;

  /// converts a [InsurancePlanBenefit1Builder]
  /// to [InsurancePlanBenefit1]
  @override
  InsurancePlanBenefit1 build() => InsurancePlanBenefit1.fromJson(toJson());

  /// converts a [InsurancePlanBenefit1Builder]
  /// to [Map<String, dynamic>]
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
    addField('cost', cost);
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
      'cost',
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
      case 'cost':
        if (cost != null) {
          fields.addAll(cost!);
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
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'cost':
        {
          if (child is List<InsurancePlanCostBuilder>) {
            // Replace or create new list
            cost = child;
            return;
          } else if (child is InsurancePlanCostBuilder) {
            // Add single element to existing list or create new list
            cost = [...(cost ?? []), child];
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
        return ['CodeableConceptBuilder'];
      case 'cost':
        return ['InsurancePlanCostBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InsurancePlanBenefit1Builder]
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
      case 'cost':
        {
          cost = <InsurancePlanCostBuilder>[];
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
    bool cost = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (cost) this.cost = null;
  }

  @override
  InsurancePlanBenefit1Builder clone() => throw UnimplementedError();
  @override
  InsurancePlanBenefit1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    List<InsurancePlanCostBuilder>? cost,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InsurancePlanBenefit1Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      cost: cost ?? this.cost,
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
    if (o is! InsurancePlanBenefit1Builder) {
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
    if (!listEquals<InsurancePlanCostBuilder>(
      cost,
      o.cost,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanCostBuilder]
/// List of the costs associated with a specific benefit.
class InsurancePlanCostBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InsurancePlanCostBuilder]

  InsurancePlanCostBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.applicability,
    this.qualifiers,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InsurancePlan.plan.specificCost.benefit.cost',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InsurancePlanCostBuilder.empty() => InsurancePlanCostBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanCostBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.plan.specificCost.benefit.cost';
    return InsurancePlanCostBuilder(
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
      applicability: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'applicability',
        CodeableConceptBuilder.fromJson,
        '$objectPath.applicability',
      ),
      qualifiers: (json['qualifiers'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.qualifiers',
              },
            ),
          )
          .toList(),
      value: JsonParser.parseObject<QuantityBuilder>(
        json,
        'value',
        QuantityBuilder.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [InsurancePlanCostBuilder]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanCostBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanCostBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanCostBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanCostBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanCostBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanCostBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanCostBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanCost';

  /// [type]
  /// Type of cost (copay; individual cap; family cap; coinsurance;
  /// deductible).
  CodeableConceptBuilder? type;

  /// [applicability]
  /// Whether the cost applies to in-network or out-of-network providers
  /// (in-network; out-of-network; other).
  CodeableConceptBuilder? applicability;

  /// [qualifiers]
  /// Additional information about the cost, such as information about
  /// funding sources (e.g. HSA, HRA, FSA, RRA).
  List<CodeableConceptBuilder>? qualifiers;

  /// [value]
  /// The actual cost value. (some of the costs may be represented as
  /// percentages rather than currency, e.g. 10% coinsurance).
  QuantityBuilder? value;

  /// converts a [InsurancePlanCostBuilder]
  /// to [InsurancePlanCost]
  @override
  InsurancePlanCost build() => InsurancePlanCost.fromJson(toJson());

  /// converts a [InsurancePlanCostBuilder]
  /// to [Map<String, dynamic>]
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
    addField('applicability', applicability);
    addField('qualifiers', qualifiers);
    addField('value', value);
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
      'applicability',
      'qualifiers',
      'value',
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
      case 'applicability':
        if (applicability != null) {
          fields.add(applicability!);
        }
      case 'qualifiers':
        if (qualifiers != null) {
          fields.addAll(qualifiers!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
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
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'applicability':
        {
          if (child is CodeableConceptBuilder) {
            applicability = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'qualifiers':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            qualifiers = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            qualifiers = [...(qualifiers ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is QuantityBuilder) {
            value = child;
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
        return ['CodeableConceptBuilder'];
      case 'applicability':
        return ['CodeableConceptBuilder'];
      case 'qualifiers':
        return ['CodeableConceptBuilder'];
      case 'value':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InsurancePlanCostBuilder]
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
      case 'applicability':
        {
          applicability = CodeableConceptBuilder.empty();
          return;
        }
      case 'qualifiers':
        {
          qualifiers = <CodeableConceptBuilder>[];
          return;
        }
      case 'value':
        {
          value = QuantityBuilder.empty();
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
    bool applicability = false,
    bool qualifiers = false,
    bool value = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (applicability) this.applicability = null;
    if (qualifiers) this.qualifiers = null;
    if (value) this.value = null;
  }

  @override
  InsurancePlanCostBuilder clone() => throw UnimplementedError();
  @override
  InsurancePlanCostBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? applicability,
    List<CodeableConceptBuilder>? qualifiers,
    QuantityBuilder? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InsurancePlanCostBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      applicability: applicability ?? this.applicability,
      qualifiers: qualifiers ?? this.qualifiers,
      value: value ?? this.value,
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
    if (o is! InsurancePlanCostBuilder) {
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
      applicability,
      o.applicability,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      qualifiers,
      o.qualifiers,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}
