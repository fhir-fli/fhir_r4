import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Account {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept type;
  final String name;
  final PrimitiveElement Name;
  final List<Reference> subject;
  final Period servicePeriod;
  final List<AccountCoverage> coverage;
  final Reference owner;
  final String description;
  final PrimitiveElement Description;
  final List<AccountGuarantor> guarantor;
  final Reference partOf;
}

@Data()
@JsonCodable()
class AccountCoverage {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference coverage;
  final FhirPositiveInt priority;
  final PrimitiveElement Priority;
}

@Data()
@JsonCodable()
class AccountGuarantor {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference party;
  final FhirBoolean onHold;
  final PrimitiveElement OnHold;
  final Period period;
}


