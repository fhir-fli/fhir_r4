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
  const Account({
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
    required this.status,
    required this.statusElement,
    required this.type,
    required this.name,
    required this.nameElement,
    required this.subject,
    required this.servicePeriod,
    required this.coverage,
    required this.owner,
    required this.description,
    required this.descriptionElement,
    required this.guarantor,
    required this.partOf,
  });
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
  const AccountCoverage({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.coverage,
    required this.priority,
    required this.priorityElement,
  });
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
  const AccountGuarantor({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.party,
    required this.onHold,
    required this.onHoldElement,
    required this.period,
  });
}


