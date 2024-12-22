import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Organization]
/// A formally or informally recognized grouping of people or organizations
/// formed for the purpose of achieving some form of collective action.
/// Includes companies, institutions, corporations, departments, community
/// groups, healthcare practice groups, payer/insurer, etc.
class Organization extends DomainResource {
  /// Primary constructor for
  /// [Organization]

  const Organization({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.type,
    this.name,
    this.alias,
    this.telecom,
    this.address,
    this.partOf,
    this.contact,
    this.endpoint,
  }) : super(
          resourceType: R4ResourceType.Organization,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Organization.fromJson(
    Map<String, dynamic> json,
  ) {
    return Organization(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      active: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'active',
        FhirBoolean.fromJson,
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      alias: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'alias',
        FhirString.fromJson,
      ),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      address: (json['address'] as List<dynamic>?)
          ?.map<Address>(
            (v) => Address.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      partOf: JsonParser.parseObject<Reference>(
        json,
        'partOf',
        Reference.fromJson,
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<OrganizationContact>(
            (v) => OrganizationContact.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Organization]
  /// from a [String] or [YamlMap] object
  factory Organization.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Organization.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Organization.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Organization '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Organization]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Organization.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Organization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Organization';

  /// [identifier]
  /// Identifier for the organization that is used to identify the
  /// organization across multiple disparate systems.
  final List<Identifier>? identifier;

  /// [active]
  /// Whether the organization's record is still in active use.
  final FhirBoolean? active;

  /// [type]
  /// The kind(s) of organization that this is.
  final List<CodeableConcept>? type;

  /// [name]
  /// A name associated with the organization.
  final FhirString? name;

  /// [alias]
  /// A list of alternate names that the organization is known as, or was
  /// known as in the past.
  final List<FhirString>? alias;

  /// [telecom]
  /// A contact detail for the organization.
  final List<ContactPoint>? telecom;

  /// [address]
  /// An address for the organization.
  final List<Address>? address;

  /// [partOf]
  /// The organization of which this organization forms a part.
  final Reference? partOf;

  /// [contact]
  /// Contact for the organization for a certain purpose.
  final List<OrganizationContact>? contact;

  /// [endpoint]
  /// Technical endpoints providing access to services operated for the
  /// organization.
  final List<Reference>? endpoint;
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
    addField('active', active);
    addField('type', type);
    addField('name', name);
    addField('alias', alias);
    addField('telecom', telecom);
    addField('address', address);
    addField('partOf', partOf);
    addField('contact', contact);
    addField('endpoint', endpoint);
    return json;
  }

  @override
  Organization clone() => throw UnimplementedError();
  @override
  Organization copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirBoolean? active,
    List<CodeableConcept>? type,
    FhirString? name,
    List<FhirString>? alias,
    List<ContactPoint>? telecom,
    List<Address>? address,
    Reference? partOf,
    List<OrganizationContact>? contact,
    List<Reference>? endpoint,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Organization(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      active: active ?? this.active,
      type: type ?? this.type,
      name: name ?? this.name,
      alias: alias ?? this.alias,
      telecom: telecom ?? this.telecom,
      address: address ?? this.address,
      partOf: partOf ?? this.partOf,
      contact: contact ?? this.contact,
      endpoint: endpoint ?? this.endpoint,
    );
  }
}

/// [OrganizationContact]
/// Contact for the organization for a certain purpose.
class OrganizationContact extends BackboneElement {
  /// Primary constructor for
  /// [OrganizationContact]

  const OrganizationContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OrganizationContact.fromJson(
    Map<String, dynamic> json,
  ) {
    return OrganizationContact(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      purpose: JsonParser.parseObject<CodeableConcept>(
        json,
        'purpose',
        CodeableConcept.fromJson,
      ),
      name: JsonParser.parseObject<HumanName>(
        json,
        'name',
        HumanName.fromJson,
      ),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      address: JsonParser.parseObject<Address>(
        json,
        'address',
        Address.fromJson,
      ),
    );
  }

  /// Deserialize [OrganizationContact]
  /// from a [String] or [YamlMap] object
  factory OrganizationContact.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OrganizationContact.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OrganizationContact.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OrganizationContact '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OrganizationContact]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OrganizationContact.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OrganizationContact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'OrganizationContact';

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

  @override
  OrganizationContact clone() => throw UnimplementedError();
  @override
  OrganizationContact copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? purpose,
    HumanName? name,
    List<ContactPoint>? telecom,
    Address? address,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return OrganizationContact(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      purpose: purpose ?? this.purpose,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      address: address ?? this.address,
    );
  }
}
