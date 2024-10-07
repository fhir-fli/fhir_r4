import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Person extends DomainResource {
  final List<Identifier>? identifier;
  final List<HumanName>? name;
  final List<ContactPoint>? telecom;
  final FhirCode? gender;
  final Element? genderElement;
  final FhirDate? birthDate;
  final Element? birthDateElement;
  final List<Address>? address;
  final Attachment? photo;
  final Reference? managingOrganization;
  final FhirBoolean? active;
  final Element? activeElement;
  final List<PersonLink>? link;

  Person({
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
    this.name,
    this.telecom,
    this.gender,
this.genderElement,
    this.birthDate,
this.birthDateElement,
    this.address,
    this.photo,
    this.managingOrganization,
    this.active,
this.activeElement,
    this.link,
  }) : super(resourceType: R4ResourceType.Person);

@override
Person clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PersonLink extends BackboneElement {
  final Reference target;
  final FhirCode? assurance;
  final Element? assuranceElement;

  PersonLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.target,
    this.assurance,
this.assuranceElement,
  });

@override
PersonLink clone() => throw UnimplementedError();
}

