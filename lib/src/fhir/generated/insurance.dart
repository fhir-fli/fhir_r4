import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class InsurancePlan {
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
  final List<CodeableConcept> type;
  final String name;
  final PrimitiveElement nameElement;
  final List<String> alias;
  final List<PrimitiveElement> aliasElement;
  final Period period;
  final Reference ownedBy;
  final Reference administeredBy;
  final List<Reference> coverageArea;
  final List<InsurancePlanContact> contact;
  final List<Reference> endpoint;
  final List<Reference> network;
  final List<InsurancePlanCoverage> coverage;
  final List<InsurancePlanPlan> plan;
}

@Data()
@JsonCodable()
class InsurancePlanContact {
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
class InsurancePlanCoverage {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<Reference> network;
  final List<InsurancePlanBenefit> benefit;
}

@Data()
@JsonCodable()
class InsurancePlanBenefit {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final String requirement;
  final PrimitiveElement requirementElement;
  final List<InsurancePlanLimit> limit;
}

@Data()
@JsonCodable()
class InsurancePlanLimit {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Quantity value;
  final CodeableConcept code;
}

@Data()
@JsonCodable()
class InsurancePlanPlan {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final CodeableConcept type;
  final List<Reference> coverageArea;
  final List<Reference> network;
  final List<InsurancePlanGeneralCost> generalCost;
  final List<InsurancePlanSpecificCost> specificCost;
}

@Data()
@JsonCodable()
class InsurancePlanGeneralCost {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final FhirPositiveInt groupSize;
  final PrimitiveElement groupSizeElement;
  final Money cost;
  final String comment;
  final PrimitiveElement commentElement;
}

@Data()
@JsonCodable()
class InsurancePlanSpecificCost {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final List<InsurancePlanBenefit1> benefit;
}

@Data()
@JsonCodable()
class InsurancePlanBenefit1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<InsurancePlanCost> cost;
}

@Data()
@JsonCodable()
class InsurancePlanCost {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept applicability;
  final List<CodeableConcept> qualifiers;
  final Quantity value;
}


