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
}

