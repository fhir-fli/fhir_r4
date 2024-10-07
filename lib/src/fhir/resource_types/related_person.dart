import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class RelatedPerson extends DomainResource {
  final List<Identifier>? identifier;
  final FhirBoolean? active;
  final Element? activeElement;
  final Reference patient;
  final List<CodeableConcept>? relationship;
  final List<HumanName>? name;
  final List<ContactPoint>? telecom;
  final FhirCode? gender;
  final Element? genderElement;
  final FhirDate? birthDate;
  final Element? birthDateElement;
  final List<Address>? address;
  final List<Attachment>? photo;
  final Period? period;
  final List<RelatedPersonCommunication>? communication;

  RelatedPerson({
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
    required this.patient,
    this.relationship,
    this.name,
    this.telecom,
    this.gender,
this.genderElement,
    this.birthDate,
this.birthDateElement,
    this.address,
    this.photo,
    this.period,
    this.communication,
  }) : super(resourceType: R4ResourceType.RelatedPerson);

@override
RelatedPerson clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class RelatedPersonCommunication extends BackboneElement {
  final CodeableConcept language;
  final FhirBoolean? preferred;
  final Element? preferredElement;

  RelatedPersonCommunication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.language,
    this.preferred,
this.preferredElement,
  });

@override
RelatedPersonCommunication clone() => throw UnimplementedError();
}

