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
  const InsurancePlan({
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
    required this.alias,
    required this.aliasElement,
    required this.period,
    required this.ownedBy,
    required this.administeredBy,
    required this.coverageArea,
    required this.contact,
    required this.endpoint,
    required this.network,
    required this.coverage,
    required this.plan,
  });
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
  const InsurancePlanContact({
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
class InsurancePlanCoverage {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<Reference> network;
  final List<InsurancePlanBenefit> benefit;
  const InsurancePlanCoverage({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.network,
    required this.benefit,
  });
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
  const InsurancePlanBenefit({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.requirement,
    required this.requirementElement,
    required this.limit,
  });
}

@Data()
@JsonCodable()
class InsurancePlanLimit {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Quantity value;
  final CodeableConcept code;
  const InsurancePlanLimit({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.value,
    required this.code,
  });
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
  const InsurancePlanPlan({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.type,
    required this.coverageArea,
    required this.network,
    required this.generalCost,
    required this.specificCost,
  });
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
  const InsurancePlanGeneralCost({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.groupSize,
    required this.groupSizeElement,
    required this.cost,
    required this.comment,
    required this.commentElement,
  });
}

@Data()
@JsonCodable()
class InsurancePlanSpecificCost {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final List<InsurancePlanBenefit1> benefit;
  const InsurancePlanSpecificCost({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.category,
    required this.benefit,
  });
}

@Data()
@JsonCodable()
class InsurancePlanBenefit1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<InsurancePlanCost> cost;
  const InsurancePlanBenefit1({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.cost,
  });
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
  const InsurancePlanCost({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.applicability,
    required this.qualifiers,
    required this.value,
  });
}


