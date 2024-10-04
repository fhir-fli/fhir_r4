import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Organization {
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
  final FhirBoolean active;
  final PrimitiveElement activeElement;
  final List<CodeableConcept> type;
  final String name;
  final PrimitiveElement nameElement;
  final List<String> alias;
  final List<PrimitiveElement> aliasElement;
  final List<ContactPoint> telecom;
  final List<Address> address;
  final Reference partOf;
  final List<OrganizationContact> contact;
  final List<Reference> endpoint;
  const Organization({
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
    required this.active,
    required this.activeElement,
    required this.type,
    required this.name,
    required this.nameElement,
    required this.alias,
    required this.aliasElement,
    required this.telecom,
    required this.address,
    required this.partOf,
    required this.contact,
    required this.endpoint,
  });
}

@Data()
@JsonCodable()
class OrganizationContact {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept purpose;
  final HumanName name;
  final List<ContactPoint> telecom;
  final Address address;
  const OrganizationContact({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.purpose,
    required this.name,
    required this.telecom,
    required this.address,
  });
}

@Data()
@JsonCodable()
class OrganizationAffiliation {
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
  final FhirBoolean active;
  final PrimitiveElement activeElement;
  final Period period;
  final Reference organization;
  final Reference participatingOrganization;
  final List<Reference> network;
  final List<CodeableConcept> code;
  final List<CodeableConcept> specialty;
  final List<Reference> location;
  final List<Reference> healthcareService;
  final List<ContactPoint> telecom;
  final List<Reference> endpoint;
  const OrganizationAffiliation({
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
    required this.active,
    required this.activeElement,
    required this.period,
    required this.organization,
    required this.participatingOrganization,
    required this.network,
    required this.code,
    required this.specialty,
    required this.location,
    required this.healthcareService,
    required this.telecom,
    required this.endpoint,
  });
}


