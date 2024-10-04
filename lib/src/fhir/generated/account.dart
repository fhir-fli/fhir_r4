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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept type;
  final String name;
  final PrimitiveElement nameElement;
  final List<Reference> subject;
  final Period servicePeriod;
  final List<AccountCoverage> coverage;
  final Reference owner;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<AccountGuarantor> guarantor;
  final Reference partOf;
}

@Data()
@JsonCodable()
class AccountCoverage {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference coverage;
  final FhirPositiveInt priority;
  final PrimitiveElement priorityElement;
}

@Data()
@JsonCodable()
class AccountGuarantor {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference party;
  final FhirBoolean onHold;
  final PrimitiveElement onHoldElement;
  final Period period;
}


