import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Account]
/// A financial tool for tracking value accrued for a particular purpose.
/// In the healthcare field, used to track charges for a patient, cost
/// centers, etc.
class Account extends DomainResource {
  /// Primary constructor for
  /// [Account]

  const Account({
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
    this.type,
    this.name,
    this.subject,
    this.servicePeriod,
    this.coverage,
    this.owner,
    this.description,
    this.guarantor,
    this.partOf,
  }) : super(
          objectPath: 'Account',
          resourceType: R4ResourceType.Account,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Account.empty() => Account(
        status: AccountStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Account.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Account';
    return Account(
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
      status: JsonParser.parsePrimitive<AccountStatus>(
        json,
        'status',
        AccountStatus.fromJson,
        '$objectPath.status',
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      subject: (json['subject'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subject',
              },
            ),
          )
          .toList(),
      servicePeriod: JsonParser.parseObject<Period>(
        json,
        'servicePeriod',
        Period.fromJson,
        '$objectPath.servicePeriod',
      ),
      coverage: (json['coverage'] as List<dynamic>?)
          ?.map<AccountCoverage>(
            (v) => AccountCoverage.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.coverage',
              },
            ),
          )
          .toList(),
      owner: JsonParser.parseObject<Reference>(
        json,
        'owner',
        Reference.fromJson,
        '$objectPath.owner',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      guarantor: (json['guarantor'] as List<dynamic>?)
          ?.map<AccountGuarantor>(
            (v) => AccountGuarantor.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.guarantor',
              },
            ),
          )
          .toList(),
      partOf: JsonParser.parseObject<Reference>(
        json,
        'partOf',
        Reference.fromJson,
        '$objectPath.partOf',
      ),
    );
  }

  /// Deserialize [Account]
  /// from a [String] or [YamlMap] object
  factory Account.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Account.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Account.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Account '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Account]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Account.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Account.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Account';

  /// [identifier]
  /// Unique identifier used to reference the account. Might or might not be
  /// intended for human use (e.g. credit card number).
  final List<Identifier>? identifier;

  /// [status]
  /// Indicates whether the account is presently used/usable or not.
  final AccountStatus status;

  /// [type]
  /// Categorizes the account for reporting and searching purposes.
  final CodeableConcept? type;

  /// [name]
  /// Name used for the account when displaying it to humans in reports, etc.
  final FhirString? name;

  /// [subject]
  /// Identifies the entity which incurs the expenses. While the immediate
  /// recipients of services or goods might be entities related to the
  /// subject, the expenses were ultimately incurred by the subject of the
  /// Account.
  final List<Reference>? subject;

  /// [servicePeriod]
  /// The date range of services associated with this account.
  final Period? servicePeriod;

  /// [coverage]
  /// The party(s) that are responsible for covering the payment of this
  /// account, and what order should they be applied to the account.
  final List<AccountCoverage>? coverage;

  /// [owner]
  /// Indicates the service area, hospital, department, etc. with
  /// responsibility for managing the Account.
  final Reference? owner;

  /// [description]
  /// Provides additional information about what the account tracks and how
  /// it is used.
  final FhirString? description;

  /// [guarantor]
  /// The parties responsible for balancing the account if other payment
  /// options fall short.
  final List<AccountGuarantor>? guarantor;

  /// [partOf]
  /// Reference to a parent Account.
  final Reference? partOf;
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
    addField('subject', subject);
    addField('servicePeriod', servicePeriod);
    addField('coverage', coverage);
    addField('owner', owner);
    addField('description', description);
    addField('guarantor', guarantor);
    addField('partOf', partOf);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
      'subject',
      'servicePeriod',
      'coverage',
      'owner',
      'description',
      'guarantor',
      'partOf',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
        fields.add(status);
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'subject':
        if (subject != null) {
          fields.addAll(subject!);
        }
      case 'servicePeriod':
        if (servicePeriod != null) {
          fields.add(servicePeriod!);
        }
      case 'coverage':
        if (coverage != null) {
          fields.addAll(coverage!);
        }
      case 'owner':
        if (owner != null) {
          fields.add(owner!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'guarantor':
        if (guarantor != null) {
          fields.addAll(guarantor!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.add(partOf!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Account clone() => throw UnimplementedError();
  @override
  Account copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    AccountStatus? status,
    CodeableConcept? type,
    FhirString? name,
    List<Reference>? subject,
    Period? servicePeriod,
    List<AccountCoverage>? coverage,
    Reference? owner,
    FhirString? description,
    List<AccountGuarantor>? guarantor,
    Reference? partOf,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Account(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      subject: subject
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subject',
                ),
              )
              .toList() ??
          this.subject,
      servicePeriod: servicePeriod?.copyWith(
            objectPath: '$newObjectPath.servicePeriod',
          ) ??
          this.servicePeriod,
      coverage: coverage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.coverage',
                ),
              )
              .toList() ??
          this.coverage,
      owner: owner?.copyWith(
            objectPath: '$newObjectPath.owner',
          ) ??
          this.owner,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      guarantor: guarantor
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.guarantor',
                ),
              )
              .toList() ??
          this.guarantor,
      partOf: partOf?.copyWith(
            objectPath: '$newObjectPath.partOf',
          ) ??
          this.partOf,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Account) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!listEquals<Reference>(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(servicePeriod, o.servicePeriod)) {
      return false;
    }
    if (!listEquals<AccountCoverage>(
      coverage,
      o.coverage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(owner, o.owner)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!listEquals<AccountGuarantor>(
      guarantor,
      o.guarantor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(partOf, o.partOf)) {
      return false;
    }
    return true;
  }
}

/// [AccountCoverage]
/// The party(s) that are responsible for covering the payment of this
/// account, and what order should they be applied to the account.
class AccountCoverage extends BackboneElement {
  /// Primary constructor for
  /// [AccountCoverage]

  const AccountCoverage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.coverage,
    this.priority,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Account.coverage',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory AccountCoverage.empty() => AccountCoverage(
        coverage: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AccountCoverage.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Account.coverage';
    return AccountCoverage(
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
      coverage: JsonParser.parseObject<Reference>(
        json,
        'coverage',
        Reference.fromJson,
        '$objectPath.coverage',
      )!,
      priority: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'priority',
        FhirPositiveInt.fromJson,
        '$objectPath.priority',
      ),
    );
  }

  /// Deserialize [AccountCoverage]
  /// from a [String] or [YamlMap] object
  factory AccountCoverage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AccountCoverage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AccountCoverage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AccountCoverage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AccountCoverage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AccountCoverage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AccountCoverage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AccountCoverage';

  /// [coverage]
  /// The party(s) that contribute to payment (or part of) of the charges
  /// applied to this account (including self-pay).
  ///
  /// A coverage may only be responsible for specific types of charges, and
  /// the sequence of the coverages in the account could be important when
  /// processing billing.
  final Reference coverage;

  /// [priority]
  /// The priority of the coverage in the context of this account.
  final FhirPositiveInt? priority;
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
    addField('coverage', coverage);
    addField('priority', priority);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'coverage',
      'priority',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'coverage':
        fields.add(coverage);
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  AccountCoverage clone() => throw UnimplementedError();
  @override
  AccountCoverage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? coverage,
    FhirPositiveInt? priority,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return AccountCoverage(
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
      coverage: coverage?.copyWith(
            objectPath: '$newObjectPath.coverage',
          ) ??
          this.coverage,
      priority: priority?.copyWith(
            objectPath: '$newObjectPath.priority',
          ) ??
          this.priority,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AccountCoverage) {
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
    if (!equalsDeepWithNull(coverage, o.coverage)) {
      return false;
    }
    if (!equalsDeepWithNull(priority, o.priority)) {
      return false;
    }
    return true;
  }
}

/// [AccountGuarantor]
/// The parties responsible for balancing the account if other payment
/// options fall short.
class AccountGuarantor extends BackboneElement {
  /// Primary constructor for
  /// [AccountGuarantor]

  const AccountGuarantor({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.party,
    this.onHold,
    this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Account.guarantor',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory AccountGuarantor.empty() => AccountGuarantor(
        party: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AccountGuarantor.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Account.guarantor';
    return AccountGuarantor(
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
      party: JsonParser.parseObject<Reference>(
        json,
        'party',
        Reference.fromJson,
        '$objectPath.party',
      )!,
      onHold: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'onHold',
        FhirBoolean.fromJson,
        '$objectPath.onHold',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [AccountGuarantor]
  /// from a [String] or [YamlMap] object
  factory AccountGuarantor.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AccountGuarantor.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AccountGuarantor.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AccountGuarantor '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AccountGuarantor]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AccountGuarantor.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AccountGuarantor.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AccountGuarantor';

  /// [party]
  /// The entity who is responsible.
  final Reference party;

  /// [onHold]
  /// A guarantor may be placed on credit hold or otherwise have their role
  /// temporarily suspended.
  final FhirBoolean? onHold;

  /// [period]
  /// The timeframe during which the guarantor accepts responsibility for the
  /// account.
  final Period? period;
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
    addField('party', party);
    addField('onHold', onHold);
    addField('period', period);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'party',
      'onHold',
      'period',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'party':
        fields.add(party);
      case 'onHold':
        if (onHold != null) {
          fields.add(onHold!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  AccountGuarantor clone() => throw UnimplementedError();
  @override
  AccountGuarantor copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? party,
    FhirBoolean? onHold,
    Period? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return AccountGuarantor(
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
      party: party?.copyWith(
            objectPath: '$newObjectPath.party',
          ) ??
          this.party,
      onHold: onHold?.copyWith(
            objectPath: '$newObjectPath.onHold',
          ) ??
          this.onHold,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AccountGuarantor) {
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
    if (!equalsDeepWithNull(party, o.party)) {
      return false;
    }
    if (!equalsDeepWithNull(onHold, o.onHold)) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    return true;
  }
}
