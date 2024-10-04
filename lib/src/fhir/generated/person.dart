import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Person {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<HumanName> name;
  final List<ContactPoint> telecom;
  final FhirCode gender;
  final PrimitiveElement genderElement;
  final FhirDate birthDate;
  final PrimitiveElement birthDateElement;
  final List<Address> address;
  final Attachment photo;
  final Reference managingOrganization;
  final FhirBoolean active;
  final PrimitiveElement activeElement;
  final List<PersonLink> link;
  const Person({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.name,
    required this.telecom,
    required this.gender,
    required this.genderElement,
    required this.birthDate,
    required this.birthDateElement,
    required this.address,
    required this.photo,
    required this.managingOrganization,
    required this.active,
    required this.activeElement,
    required this.link,
  });
}

@Data()
@JsonCodable()
class PersonLink {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference target;
  final FhirCode assurance;
  final PrimitiveElement assuranceElement;
  const PersonLink({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.target,
    required this.assurance,
    required this.assuranceElement,
  });
}


