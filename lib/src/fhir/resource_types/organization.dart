import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Organization] /// A formally or informally recognized grouping of people or organizations
/// formed for the purpose of achieving some form of collective action.
/// Includes companies, institutions, corporations, departments, community
/// groups, healthcare practice groups, payer/insurer, etc.
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
  }) : super(resourceType: R4ResourceType.Organization);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for the organization that is used to identify the organization
  /// across multiple disparate systems.
  final List<Identifier>? identifier;

  /// [active] /// Whether the organization's record is still in active use.
  final FhirBoolean? active;
  final Element? activeElement;

  /// [type] /// The kind(s) of organization that this is.
  final List<CodeableConcept>? type;

  /// [name] /// A name associated with the organization.
  final FhirString? name;
  final Element? nameElement;

  /// [alias] /// A list of alternate names that the organization is known as, or was known
  /// as in the past.
  final List<FhirString>? alias;
  final List<Element>? aliasElement;

  /// [telecom] /// A contact detail for the organization.
  final List<ContactPoint>? telecom;

  /// [address] /// An address for the organization.
  final List<Address>? address;

  /// [partOf] /// The organization of which this organization forms a part.
  final Reference? partOf;

  /// [contact] /// Contact for the organization for a certain purpose.
  final List<OrganizationContact>? contact;

  /// [endpoint] /// Technical endpoints providing access to services operated for the
  /// organization.
  final List<Reference>? endpoint;
  @override
  Organization clone() => throw UnimplementedError();
  Organization copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirBoolean? active,
    Element? activeElement,
    List<CodeableConcept>? type,
    FhirString? name,
    Element? nameElement,
    List<FhirString>? alias,
    List<Element>? aliasElement,
    List<ContactPoint>? telecom,
    List<Address>? address,
    Reference? partOf,
    List<OrganizationContact>? contact,
    List<Reference>? endpoint,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [OrganizationContact] /// Contact for the organization for a certain purpose.
class OrganizationContact extends BackboneElement {
  OrganizationContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [purpose] /// Indicates a purpose for which the contact can be reached.
  final CodeableConcept? purpose;

  /// [name] /// A name associated with the contact.
  final HumanName? name;

  /// [telecom] /// A contact detail (e.g. a telephone number or an email address) by which the
  /// party may be contacted.
  final List<ContactPoint>? telecom;

  /// [address] /// Visiting or postal addresses for the contact.
  final Address? address;
  @override
  OrganizationContact clone() => throw UnimplementedError();
  OrganizationContact copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? purpose,
    HumanName? name,
    List<ContactPoint>? telecom,
    Address? address,
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
