import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [InsurancePlan]
/// Details of a Health Insurance product/plan provided by an organization.
class InsurancePlan extends DomainResource {
  /// Primary constructor for
  /// [InsurancePlan]

  const InsurancePlan({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory InsurancePlan.empty() => const InsurancePlan();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlan.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan';
    return InsurancePlan(
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
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
        '$objectPath.status',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      alias: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'alias',
        FhirString.fromJson,
        '$objectPath.alias',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
      ownedBy: JsonParser.parseObject<Reference>(
        json,
        'ownedBy',
        Reference.fromJson,
        '$objectPath.ownedBy',
      ),
      administeredBy: JsonParser.parseObject<Reference>(
        json,
        'administeredBy',
        Reference.fromJson,
        '$objectPath.administeredBy',
      ),
      coverageArea: (json['coverageArea'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.coverageArea',
              },
            ),
          )
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<InsurancePlanContact>(
            (v) => InsurancePlanContact.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endpoint',
              },
            ),
          )
          .toList(),
      network: (json['network'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.network',
              },
            ),
          )
          .toList(),
      coverage: (json['coverage'] as List<dynamic>?)
          ?.map<InsurancePlanCoverage>(
            (v) => InsurancePlanCoverage.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.coverage',
              },
            ),
          )
          .toList(),
      plan: (json['plan'] as List<dynamic>?)
          ?.map<InsurancePlanPlan>(
            (v) => InsurancePlanPlan.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.plan',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InsurancePlan]
  /// from a [String] or [YamlMap] object
  factory InsurancePlan.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlan.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlan.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlan '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlan]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlan.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlan.fromJson(json);
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
  final List<Identifier>? identifier;

  /// [status]
  /// The current state of the health insurance product.
  final PublicationStatus? status;

  /// [type]
  /// The kind of health insurance product.
  final List<CodeableConcept>? type;

  /// [name]
  /// Official name of the health insurance product as designated by the
  /// owner.
  final FhirString? name;

  /// [alias]
  /// A list of alternate names that the product is known as, or was known as
  /// in the past.
  final List<FhirString>? alias;

  /// [period]
  /// The period of time that the health insurance product is available.
  final Period? period;

  /// [ownedBy]
  /// The entity that is providing the health insurance product and
  /// underwriting the risk. This is typically an insurance carriers, other
  /// third-party payers, or health plan sponsors comonly referred to as
  /// 'payers'.
  final Reference? ownedBy;

  /// [administeredBy]
  /// An organization which administer other services such as underwriting,
  /// customer service and/or claims processing on behalf of the health
  /// insurance product owner.
  final Reference? administeredBy;

  /// [coverageArea]
  /// The geographic region in which a health insurance product's benefits
  /// apply.
  final List<Reference>? coverageArea;

  /// [contact]
  /// The contact for the health insurance product for a certain purpose.
  final List<InsurancePlanContact>? contact;

  /// [endpoint]
  /// The technical endpoints providing access to services operated for the
  /// health insurance product.
  final List<Reference>? endpoint;

  /// [network]
  /// Reference to the network included in the health insurance product.
  final List<Reference>? network;

  /// [coverage]
  /// Details about the coverage offered by the insurance product.
  final List<InsurancePlanCoverage>? coverage;

  /// [plan]
  /// Details about an insurance plan.
  final List<InsurancePlanPlan>? plan;
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'alias':
        {
          if (child is List<FhirString>) {
            return copyWith(alias: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'period':
        {
          if (child is Period) {
            return copyWith(period: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'ownedBy':
        {
          if (child is Reference) {
            return copyWith(ownedBy: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'administeredBy':
        {
          if (child is Reference) {
            return copyWith(administeredBy: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'coverageArea':
        {
          if (child is List<Reference>) {
            return copyWith(coverageArea: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contact':
        {
          if (child is List<InsurancePlanContact>) {
            return copyWith(contact: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'endpoint':
        {
          if (child is List<Reference>) {
            return copyWith(endpoint: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'network':
        {
          if (child is List<Reference>) {
            return copyWith(network: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'coverage':
        {
          if (child is List<InsurancePlanCoverage>) {
            return copyWith(coverage: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'plan':
        {
          if (child is List<InsurancePlanPlan>) {
            return copyWith(plan: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  @override
  InsurancePlan clone() => throw UnimplementedError();
  @override
  InsurancePlan copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    PublicationStatus? status,
    List<CodeableConcept>? type,
    FhirString? name,
    List<FhirString>? alias,
    Period? period,
    Reference? ownedBy,
    Reference? administeredBy,
    List<Reference>? coverageArea,
    List<InsurancePlanContact>? contact,
    List<Reference>? endpoint,
    List<Reference>? network,
    List<InsurancePlanCoverage>? coverage,
    List<InsurancePlanPlan>? plan,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return InsurancePlan(
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
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      alias: alias
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.alias',
                ),
              )
              .toList() ??
          this.alias,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      ownedBy: ownedBy?.copyWith(
            objectPath: '$newObjectPath.ownedBy',
          ) ??
          this.ownedBy,
      administeredBy: administeredBy?.copyWith(
            objectPath: '$newObjectPath.administeredBy',
          ) ??
          this.administeredBy,
      coverageArea: coverageArea
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.coverageArea',
                ),
              )
              .toList() ??
          this.coverageArea,
      contact: contact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contact',
                ),
              )
              .toList() ??
          this.contact,
      endpoint: endpoint
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.endpoint',
                ),
              )
              .toList() ??
          this.endpoint,
      network: network
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.network',
                ),
              )
              .toList() ??
          this.network,
      coverage: coverage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.coverage',
                ),
              )
              .toList() ??
          this.coverage,
      plan: plan
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.plan',
                ),
              )
              .toList() ??
          this.plan,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InsurancePlan) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
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
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!listEquals<FhirString>(
      alias,
      o.alias,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    if (!equalsDeepWithNull(ownedBy, o.ownedBy)) {
      return false;
    }
    if (!equalsDeepWithNull(administeredBy, o.administeredBy)) {
      return false;
    }
    if (!listEquals<Reference>(
      coverageArea,
      o.coverageArea,
    )) {
      return false;
    }
    if (!listEquals<InsurancePlanContact>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      network,
      o.network,
    )) {
      return false;
    }
    if (!listEquals<InsurancePlanCoverage>(
      coverage,
      o.coverage,
    )) {
      return false;
    }
    if (!listEquals<InsurancePlanPlan>(
      plan,
      o.plan,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanContact]
/// The contact for the health insurance product for a certain purpose.
class InsurancePlanContact extends BackboneElement {
  /// Primary constructor for
  /// [InsurancePlanContact]

  const InsurancePlanContact({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory InsurancePlanContact.empty() => const InsurancePlanContact();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanContact.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.contact';
    return InsurancePlanContact(
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
      purpose: JsonParser.parseObject<CodeableConcept>(
        json,
        'purpose',
        CodeableConcept.fromJson,
        '$objectPath.purpose',
      ),
      name: JsonParser.parseObject<HumanName>(
        json,
        'name',
        HumanName.fromJson,
        '$objectPath.name',
      ),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.telecom',
              },
            ),
          )
          .toList(),
      address: JsonParser.parseObject<Address>(
        json,
        'address',
        Address.fromJson,
        '$objectPath.address',
      ),
    );
  }

  /// Deserialize [InsurancePlanContact]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanContact.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanContact.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanContact.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanContact '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanContact]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanContact.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanContact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanContact';

  /// [purpose]
  /// Indicates a purpose for which the contact can be reached.
  final CodeableConcept? purpose;

  /// [name]
  /// A name associated with the contact.
  final HumanName? name;

  /// [telecom]
  /// A contact detail (e.g. a telephone number or an email address) by which
  /// the party may be contacted.
  final List<ContactPoint>? telecom;

  /// [address]
  /// Visiting or postal addresses for the contact.
  final Address? address;
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'purpose':
        {
          if (child is CodeableConcept) {
            return copyWith(purpose: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'name':
        {
          if (child is HumanName) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'telecom':
        {
          if (child is List<ContactPoint>) {
            return copyWith(telecom: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'address':
        {
          if (child is Address) {
            return copyWith(address: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  @override
  InsurancePlanContact clone() => throw UnimplementedError();
  @override
  InsurancePlanContact copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? purpose,
    HumanName? name,
    List<ContactPoint>? telecom,
    Address? address,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return InsurancePlanContact(
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
      purpose: purpose?.copyWith(
            objectPath: '$newObjectPath.purpose',
          ) ??
          this.purpose,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      telecom: telecom
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.telecom',
                ),
              )
              .toList() ??
          this.telecom,
      address: address?.copyWith(
            objectPath: '$newObjectPath.address',
          ) ??
          this.address,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InsurancePlanContact) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(purpose, o.purpose)) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!listEquals<ContactPoint>(
      telecom,
      o.telecom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(address, o.address)) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanCoverage]
/// Details about the coverage offered by the insurance product.
class InsurancePlanCoverage extends BackboneElement {
  /// Primary constructor for
  /// [InsurancePlanCoverage]

  const InsurancePlanCoverage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.network,
    required this.benefit,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InsurancePlan.coverage',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory InsurancePlanCoverage.empty() => InsurancePlanCoverage(
        type: CodeableConcept.empty(),
        benefit: <InsurancePlanBenefit>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanCoverage.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.coverage';
    return InsurancePlanCoverage(
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
      )!,
      network: (json['network'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.network',
              },
            ),
          )
          .toList(),
      benefit: (json['benefit'] as List<dynamic>)
          .map<InsurancePlanBenefit>(
            (v) => InsurancePlanBenefit.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.benefit',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InsurancePlanCoverage]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanCoverage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanCoverage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanCoverage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanCoverage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanCoverage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanCoverage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanCoverage.fromJson(json);
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
  final CodeableConcept type;

  /// [network]
  /// Reference to the network that providing the type of coverage.
  final List<Reference>? network;

  /// [benefit]
  /// Specific benefits under this type of coverage.
  final List<InsurancePlanBenefit> benefit;
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
        fields.add(type);
      case 'network':
        if (network != null) {
          fields.addAll(network!);
        }
      case 'benefit':
        fields.addAll(benefit);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'network':
        {
          if (child is List<Reference>) {
            return copyWith(network: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'benefit':
        {
          if (child is List<InsurancePlanBenefit>) {
            return copyWith(benefit: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  @override
  InsurancePlanCoverage clone() => throw UnimplementedError();
  @override
  InsurancePlanCoverage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Reference>? network,
    List<InsurancePlanBenefit>? benefit,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return InsurancePlanCoverage(
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
      network: network
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.network',
                ),
              )
              .toList() ??
          this.network,
      benefit: benefit
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.benefit',
                ),
              )
              .toList() ??
          this.benefit,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InsurancePlanCoverage) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!listEquals<Reference>(
      network,
      o.network,
    )) {
      return false;
    }
    if (!listEquals<InsurancePlanBenefit>(
      benefit,
      o.benefit,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanBenefit]
/// Specific benefits under this type of coverage.
class InsurancePlanBenefit extends BackboneElement {
  /// Primary constructor for
  /// [InsurancePlanBenefit]

  const InsurancePlanBenefit({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.requirement,
    this.limit,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InsurancePlan.coverage.benefit',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory InsurancePlanBenefit.empty() => InsurancePlanBenefit(
        type: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanBenefit.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.coverage.benefit';
    return InsurancePlanBenefit(
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
      )!,
      requirement: JsonParser.parsePrimitive<FhirString>(
        json,
        'requirement',
        FhirString.fromJson,
        '$objectPath.requirement',
      ),
      limit: (json['limit'] as List<dynamic>?)
          ?.map<InsurancePlanLimit>(
            (v) => InsurancePlanLimit.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.limit',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InsurancePlanBenefit]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanBenefit.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanBenefit.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanBenefit.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanBenefit '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanBenefit]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanBenefit.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanBenefit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanBenefit';

  /// [type]
  /// Type of benefit (primary care; speciality care; inpatient; outpatient).
  final CodeableConcept type;

  /// [requirement]
  /// The referral requirements to have access/coverage for this benefit.
  final FhirString? requirement;

  /// [limit]
  /// The specific limits on the benefit.
  final List<InsurancePlanLimit>? limit;
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
        fields.add(type);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'requirement':
        {
          if (child is FhirString) {
            return copyWith(requirement: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'limit':
        {
          if (child is List<InsurancePlanLimit>) {
            return copyWith(limit: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  @override
  InsurancePlanBenefit clone() => throw UnimplementedError();
  @override
  InsurancePlanBenefit copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? requirement,
    List<InsurancePlanLimit>? limit,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return InsurancePlanBenefit(
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
      requirement: requirement?.copyWith(
            objectPath: '$newObjectPath.requirement',
          ) ??
          this.requirement,
      limit: limit
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.limit',
                ),
              )
              .toList() ??
          this.limit,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InsurancePlanBenefit) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(requirement, o.requirement)) {
      return false;
    }
    if (!listEquals<InsurancePlanLimit>(
      limit,
      o.limit,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanLimit]
/// The specific limits on the benefit.
class InsurancePlanLimit extends BackboneElement {
  /// Primary constructor for
  /// [InsurancePlanLimit]

  const InsurancePlanLimit({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory InsurancePlanLimit.empty() => const InsurancePlanLimit();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanLimit.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.coverage.benefit.limit';
    return InsurancePlanLimit(
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
      value: JsonParser.parseObject<Quantity>(
        json,
        'value',
        Quantity.fromJson,
        '$objectPath.value',
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
    );
  }

  /// Deserialize [InsurancePlanLimit]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanLimit.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanLimit.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanLimit.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanLimit '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanLimit]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanLimit.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanLimit.fromJson(json);
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
  final Quantity? value;

  /// [code]
  /// The specific limit on the benefit.
  final CodeableConcept? code;
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'value':
        {
          if (child is Quantity) {
            return copyWith(value: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  @override
  InsurancePlanLimit clone() => throw UnimplementedError();
  @override
  InsurancePlanLimit copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? value,
    CodeableConcept? code,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return InsurancePlanLimit(
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
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InsurancePlanLimit) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(value, o.value)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanPlan]
/// Details about an insurance plan.
class InsurancePlanPlan extends BackboneElement {
  /// Primary constructor for
  /// [InsurancePlanPlan]

  const InsurancePlanPlan({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory InsurancePlanPlan.empty() => const InsurancePlanPlan();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanPlan.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.plan';
    return InsurancePlanPlan(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      coverageArea: (json['coverageArea'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.coverageArea',
              },
            ),
          )
          .toList(),
      network: (json['network'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.network',
              },
            ),
          )
          .toList(),
      generalCost: (json['generalCost'] as List<dynamic>?)
          ?.map<InsurancePlanGeneralCost>(
            (v) => InsurancePlanGeneralCost.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.generalCost',
              },
            ),
          )
          .toList(),
      specificCost: (json['specificCost'] as List<dynamic>?)
          ?.map<InsurancePlanSpecificCost>(
            (v) => InsurancePlanSpecificCost.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specificCost',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InsurancePlanPlan]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanPlan.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanPlan.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanPlan.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanPlan '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanPlan]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanPlan.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanPlan.fromJson(json);
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
  final List<Identifier>? identifier;

  /// [type]
  /// Type of plan. For example, "Platinum" or "High Deductable".
  final CodeableConcept? type;

  /// [coverageArea]
  /// The geographic region in which a health insurance plan's benefits
  /// apply.
  final List<Reference>? coverageArea;

  /// [network]
  /// Reference to the network that providing the type of coverage.
  final List<Reference>? network;

  /// [generalCost]
  /// Overall costs associated with the plan.
  final List<InsurancePlanGeneralCost>? generalCost;

  /// [specificCost]
  /// Costs associated with the coverage provided by the product.
  final List<InsurancePlanSpecificCost>? specificCost;
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'coverageArea':
        {
          if (child is List<Reference>) {
            return copyWith(coverageArea: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'network':
        {
          if (child is List<Reference>) {
            return copyWith(network: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'generalCost':
        {
          if (child is List<InsurancePlanGeneralCost>) {
            return copyWith(generalCost: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'specificCost':
        {
          if (child is List<InsurancePlanSpecificCost>) {
            return copyWith(specificCost: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  @override
  InsurancePlanPlan clone() => throw UnimplementedError();
  @override
  InsurancePlanPlan copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? type,
    List<Reference>? coverageArea,
    List<Reference>? network,
    List<InsurancePlanGeneralCost>? generalCost,
    List<InsurancePlanSpecificCost>? specificCost,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return InsurancePlanPlan(
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
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      coverageArea: coverageArea
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.coverageArea',
                ),
              )
              .toList() ??
          this.coverageArea,
      network: network
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.network',
                ),
              )
              .toList() ??
          this.network,
      generalCost: generalCost
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.generalCost',
                ),
              )
              .toList() ??
          this.generalCost,
      specificCost: specificCost
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.specificCost',
                ),
              )
              .toList() ??
          this.specificCost,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InsurancePlanPlan) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!listEquals<Reference>(
      coverageArea,
      o.coverageArea,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      network,
      o.network,
    )) {
      return false;
    }
    if (!listEquals<InsurancePlanGeneralCost>(
      generalCost,
      o.generalCost,
    )) {
      return false;
    }
    if (!listEquals<InsurancePlanSpecificCost>(
      specificCost,
      o.specificCost,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanGeneralCost]
/// Overall costs associated with the plan.
class InsurancePlanGeneralCost extends BackboneElement {
  /// Primary constructor for
  /// [InsurancePlanGeneralCost]

  const InsurancePlanGeneralCost({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory InsurancePlanGeneralCost.empty() => const InsurancePlanGeneralCost();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanGeneralCost.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.plan.generalCost';
    return InsurancePlanGeneralCost(
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
      groupSize: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'groupSize',
        FhirPositiveInt.fromJson,
        '$objectPath.groupSize',
      ),
      cost: JsonParser.parseObject<Money>(
        json,
        'cost',
        Money.fromJson,
        '$objectPath.cost',
      ),
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
        '$objectPath.comment',
      ),
    );
  }

  /// Deserialize [InsurancePlanGeneralCost]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanGeneralCost.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanGeneralCost.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanGeneralCost.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanGeneralCost '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanGeneralCost]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanGeneralCost.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanGeneralCost.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InsurancePlanGeneralCost';

  /// [type]
  /// Type of cost.
  final CodeableConcept? type;

  /// [groupSize]
  /// Number of participants enrolled in the plan.
  final FhirPositiveInt? groupSize;

  /// [cost]
  /// Value of the cost.
  final Money? cost;

  /// [comment]
  /// Additional information about the general costs associated with this
  /// plan.
  final FhirString? comment;
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'groupSize':
        {
          if (child is FhirPositiveInt) {
            return copyWith(groupSize: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'cost':
        {
          if (child is Money) {
            return copyWith(cost: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'comment':
        {
          if (child is FhirString) {
            return copyWith(comment: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  @override
  InsurancePlanGeneralCost clone() => throw UnimplementedError();
  @override
  InsurancePlanGeneralCost copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirPositiveInt? groupSize,
    Money? cost,
    FhirString? comment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return InsurancePlanGeneralCost(
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
      groupSize: groupSize?.copyWith(
            objectPath: '$newObjectPath.groupSize',
          ) ??
          this.groupSize,
      cost: cost?.copyWith(
            objectPath: '$newObjectPath.cost',
          ) ??
          this.cost,
      comment: comment?.copyWith(
            objectPath: '$newObjectPath.comment',
          ) ??
          this.comment,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InsurancePlanGeneralCost) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(groupSize, o.groupSize)) {
      return false;
    }
    if (!equalsDeepWithNull(cost, o.cost)) {
      return false;
    }
    if (!equalsDeepWithNull(comment, o.comment)) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanSpecificCost]
/// Costs associated with the coverage provided by the product.
class InsurancePlanSpecificCost extends BackboneElement {
  /// Primary constructor for
  /// [InsurancePlanSpecificCost]

  const InsurancePlanSpecificCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.benefit,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InsurancePlan.plan.specificCost',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory InsurancePlanSpecificCost.empty() => InsurancePlanSpecificCost(
        category: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanSpecificCost.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.plan.specificCost';
    return InsurancePlanSpecificCost(
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
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      )!,
      benefit: (json['benefit'] as List<dynamic>?)
          ?.map<InsurancePlanBenefit>(
            (v) => InsurancePlanBenefit.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.benefit',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InsurancePlanSpecificCost]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanSpecificCost.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanSpecificCost.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanSpecificCost.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanSpecificCost '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanSpecificCost]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanSpecificCost.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanSpecificCost.fromJson(json);
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
  final CodeableConcept category;

  /// [benefit]
  /// List of the specific benefits under this category of benefit.
  final List<InsurancePlanBenefit>? benefit;
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
      case 'category':
        fields.add(category);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'benefit':
        {
          if (child is List<InsurancePlanBenefit>) {
            return copyWith(benefit: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  @override
  InsurancePlanSpecificCost clone() => throw UnimplementedError();
  @override
  InsurancePlanSpecificCost copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    List<InsurancePlanBenefit>? benefit,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return InsurancePlanSpecificCost(
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
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      benefit: benefit
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.benefit',
                ),
              )
              .toList() ??
          this.benefit,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InsurancePlanSpecificCost) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(category, o.category)) {
      return false;
    }
    if (!listEquals<InsurancePlanBenefit>(
      benefit,
      o.benefit,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanBenefit1]
/// List of the specific benefits under this category of benefit.
class InsurancePlanBenefit1 extends BackboneElement {
  /// Primary constructor for
  /// [InsurancePlanBenefit1]

  const InsurancePlanBenefit1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.cost,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InsurancePlan.plan.specificCost.benefit',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory InsurancePlanBenefit1.empty() => InsurancePlanBenefit1(
        type: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanBenefit1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.plan.specificCost.benefit';
    return InsurancePlanBenefit1(
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
      )!,
      cost: (json['cost'] as List<dynamic>?)
          ?.map<InsurancePlanCost>(
            (v) => InsurancePlanCost.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.cost',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InsurancePlanBenefit1]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanBenefit1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanBenefit1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanBenefit1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanBenefit1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanBenefit1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanBenefit1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanBenefit1.fromJson(json);
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
  final CodeableConcept type;

  /// [cost]
  /// List of the costs associated with a specific benefit.
  final List<InsurancePlanCost>? cost;
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
        fields.add(type);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'cost':
        {
          if (child is List<InsurancePlanCost>) {
            return copyWith(cost: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  @override
  InsurancePlanBenefit1 clone() => throw UnimplementedError();
  @override
  InsurancePlanBenefit1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<InsurancePlanCost>? cost,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return InsurancePlanBenefit1(
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
      cost: cost
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.cost',
                ),
              )
              .toList() ??
          this.cost,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InsurancePlanBenefit1) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!listEquals<InsurancePlanCost>(
      cost,
      o.cost,
    )) {
      return false;
    }
    return true;
  }
}

/// [InsurancePlanCost]
/// List of the costs associated with a specific benefit.
class InsurancePlanCost extends BackboneElement {
  /// Primary constructor for
  /// [InsurancePlanCost]

  const InsurancePlanCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.applicability,
    this.qualifiers,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InsurancePlan.plan.specificCost.benefit.cost',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory InsurancePlanCost.empty() => InsurancePlanCost(
        type: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InsurancePlanCost.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InsurancePlan.plan.specificCost.benefit.cost';
    return InsurancePlanCost(
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
      )!,
      applicability: JsonParser.parseObject<CodeableConcept>(
        json,
        'applicability',
        CodeableConcept.fromJson,
        '$objectPath.applicability',
      ),
      qualifiers: (json['qualifiers'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.qualifiers',
              },
            ),
          )
          .toList(),
      value: JsonParser.parseObject<Quantity>(
        json,
        'value',
        Quantity.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [InsurancePlanCost]
  /// from a [String] or [YamlMap] object
  factory InsurancePlanCost.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InsurancePlanCost.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InsurancePlanCost.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InsurancePlanCost '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InsurancePlanCost]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InsurancePlanCost.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InsurancePlanCost.fromJson(json);
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
  final CodeableConcept type;

  /// [applicability]
  /// Whether the cost applies to in-network or out-of-network providers
  /// (in-network; out-of-network; other).
  final CodeableConcept? applicability;

  /// [qualifiers]
  /// Additional information about the cost, such as information about
  /// funding sources (e.g. HSA, HRA, FSA, RRA).
  final List<CodeableConcept>? qualifiers;

  /// [value]
  /// The actual cost value. (some of the costs may be represented as
  /// percentages rather than currency, e.g. 10% coinsurance).
  final Quantity? value;
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
        fields.add(type);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'applicability':
        {
          if (child is CodeableConcept) {
            return copyWith(applicability: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'qualifiers':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(qualifiers: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'value':
        {
          if (child is Quantity) {
            return copyWith(value: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  @override
  InsurancePlanCost clone() => throw UnimplementedError();
  @override
  InsurancePlanCost copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? applicability,
    List<CodeableConcept>? qualifiers,
    Quantity? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return InsurancePlanCost(
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
      applicability: applicability?.copyWith(
            objectPath: '$newObjectPath.applicability',
          ) ??
          this.applicability,
      qualifiers: qualifiers
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.qualifiers',
                ),
              )
              .toList() ??
          this.qualifiers,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InsurancePlanCost) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(applicability, o.applicability)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      qualifiers,
      o.qualifiers,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(value, o.value)) {
      return false;
    }
    return true;
  }
}
