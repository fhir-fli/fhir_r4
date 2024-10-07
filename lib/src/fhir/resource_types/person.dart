import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Person extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  Person clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class PersonLink extends BackboneElement {
  PersonLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.target,
    this.assurance,
    this.assuranceElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Reference target;
  final FhirCode? assurance;
  final Element? assuranceElement;
  @override
  PersonLink clone() => throw UnimplementedError();
}
