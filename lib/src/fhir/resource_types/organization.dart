import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'organization.g.dart';

/// [Organization] /// A formally or informally recognized grouping of people or organizations
/// formed for the purpose of achieving some form of collective action.
/// Includes companies, institutions, corporations, departments, community
/// groups, healthcare practice groups, payer/insurer, etc.
@JsonSerializable()
class Organization extends DomainResource {
  Organization({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.activeElement,
    this.type,
    this.name,
    this.nameElement,
    this.alias,
    this.aliasElement,
    this.telecom,
    this.address,
    this.partOf,
    this.contact,
    this.endpoint,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.Organization,
            fhirType: 'Organization');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for the organization that is used to identify the organization
  /// across multiple disparate systems.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [active] /// Whether the organization's record is still in active use.
  @JsonKey(name: 'active')
  final FhirBoolean? active;
  @JsonKey(name: '_active')
  final Element? activeElement;

  /// [type] /// The kind(s) of organization that this is.
  @JsonKey(name: 'type')
  final List<OrganizationType>? type;

  /// [name] /// A name associated with the organization.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [alias] /// A list of alternate names that the organization is known as, or was known
  /// as in the past.
  @JsonKey(name: 'alias')
  final List<FhirString>? alias;
  @JsonKey(name: '_alias')
  final List<Element>? aliasElement;

  /// [telecom] /// A contact detail for the organization.
  @JsonKey(name: 'telecom')
  final List<ContactPoint>? telecom;

  /// [address] /// An address for the organization.
  @JsonKey(name: 'address')
  final List<Address>? address;

  /// [partOf] /// The organization of which this organization forms a part.
  @JsonKey(name: 'partOf')
  final Reference? partOf;

  /// [contact] /// Contact for the organization for a certain purpose.
  @JsonKey(name: 'contact')
  final List<OrganizationContact>? contact;

  /// [endpoint] /// Technical endpoints providing access to services operated for the
  /// organization.
  @JsonKey(name: 'endpoint')
  final List<Reference>? endpoint;
  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OrganizationToJson(this);

  @override
  Organization clone() => throw UnimplementedError();
  @override
  Organization copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirBoolean? active,
    Element? activeElement,
    List<OrganizationType>? type,
    FhirString? name,
    Element? nameElement,
    List<FhirString>? alias,
    List<Element>? aliasElement,
    List<ContactPoint>? telecom,
    List<Address>? address,
    Reference? partOf,
    List<OrganizationContact>? contact,
    List<Reference>? endpoint,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Organization(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      active: active ?? this.active,
      activeElement: activeElement ?? this.activeElement,
      type: type ?? this.type,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      alias: alias ?? this.alias,
      aliasElement: aliasElement ?? this.aliasElement,
      telecom: telecom ?? this.telecom,
      address: address ?? this.address,
      partOf: partOf ?? this.partOf,
      contact: contact ?? this.contact,
      endpoint: endpoint ?? this.endpoint,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Organization.fromYaml(dynamic yaml) => yaml is String
      ? Organization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Organization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Organization cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Organization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Organization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [OrganizationContact] /// Contact for the organization for a certain purpose.
@JsonSerializable()
class OrganizationContact extends BackboneElement {
  OrganizationContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'OrganizationContact');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [purpose] /// Indicates a purpose for which the contact can be reached.
  @JsonKey(name: 'purpose')
  final ContactEntityType? purpose;

  /// [name] /// A name associated with the contact.
  @JsonKey(name: 'name')
  final HumanName? name;

  /// [telecom] /// A contact detail (e.g. a telephone number or an email address) by which the
  /// party may be contacted.
  @JsonKey(name: 'telecom')
  final List<ContactPoint>? telecom;

  /// [address] /// Visiting or postal addresses for the contact.
  @JsonKey(name: 'address')
  final Address? address;
  factory OrganizationContact.fromJson(Map<String, dynamic> json) =>
      _$OrganizationContactFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OrganizationContactToJson(this);

  @override
  OrganizationContact clone() => throw UnimplementedError();
  @override
  OrganizationContact copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ContactEntityType? purpose,
    HumanName? name,
    List<ContactPoint>? telecom,
    Address? address,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return OrganizationContact(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      purpose: purpose ?? this.purpose,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      address: address ?? this.address,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory OrganizationContact.fromYaml(dynamic yaml) => yaml is String
      ? OrganizationContact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? OrganizationContact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'OrganizationContact cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory OrganizationContact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OrganizationContact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
