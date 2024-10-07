import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
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

  final List<Identifier>? identifier;
  final FhirBoolean? active;
  final Element? activeElement;
  final List<CodeableConcept>? type;
  final FhirString? name;
  final Element? nameElement;
  final List<FhirString>? alias;
  final List<Element>? aliasElement;
  final List<ContactPoint>? telecom;
  final List<Address>? address;
  final Reference? partOf;
  final List<OrganizationContact>? contact;
  final List<Reference>? endpoint;
  @override
  Organization clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final CodeableConcept? purpose;
  final HumanName? name;
  final List<ContactPoint>? telecom;
  final Address? address;
  @override
  OrganizationContact clone() => throw UnimplementedError();
}
