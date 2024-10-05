import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class InsurancePlan extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final List<CodeableConcept>? type;
  final FhirString? name;
  final Element? nameElement;
  final List<FhirString>? alias;
  final List<Element>? aliasElement;
  final Period? period;
  final Reference? ownedBy;
  final Reference? administeredBy;
  final List<Reference>? coverageArea;
  final List<InsurancePlanContact>? contact;
  final List<Reference>? endpoint;
  final List<Reference>? network;
  final List<InsurancePlanCoverage>? coverage;
  final List<InsurancePlanPlan>? plan;

  InsurancePlan({
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
    this.status,
    this.statusElement,
    this.type,
    this.name,
    this.nameElement,
    this.alias,
    this.aliasElement,
    this.period,
    this.ownedBy,
    this.administeredBy,
    this.coverageArea,
    this.contact,
    this.endpoint,
    this.network,
    this.coverage,
    this.plan,
  }): super(resourceType: R4ResourceType.InsurancePlan);

@override
InsurancePlan clone() => this;

}


@Data()
@JsonCodable()
class InsurancePlanContact {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? purpose;
  final HumanName? name;
  final List<ContactPoint>? telecom;
  final Address? address;

  InsurancePlanContact({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
  });

}


@Data()
@JsonCodable()
class InsurancePlanCoverage {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final List<Reference>? network;
  final List<InsurancePlanBenefit> benefit;

  InsurancePlanCoverage({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.network,
    required this.benefit,
  });

}


@Data()
@JsonCodable()
class InsurancePlanBenefit {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final FhirString? requirement;
  final Element? requirementElement;
  final List<InsurancePlanLimit>? limit;

  InsurancePlanBenefit({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.requirement,
    this.requirementElement,
    this.limit,
  });

}


@Data()
@JsonCodable()
class InsurancePlanLimit {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Quantity? value;
  final CodeableConcept? code;

  InsurancePlanLimit({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.value,
    this.code,
  });

}


@Data()
@JsonCodable()
class InsurancePlanPlan {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<Identifier>? identifier;
  final CodeableConcept? type;
  final List<Reference>? coverageArea;
  final List<Reference>? network;
  final List<InsurancePlanGeneralCost>? generalCost;
  final List<InsurancePlanSpecificCost>? specificCost;

  InsurancePlanPlan({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.coverageArea,
    this.network,
    this.generalCost,
    this.specificCost,
  });

}


@Data()
@JsonCodable()
class InsurancePlanGeneralCost {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final FhirPositiveInt? groupSize;
  final Element? groupSizeElement;
  final Money? cost;
  final FhirString? comment;
  final Element? commentElement;

  InsurancePlanGeneralCost({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.groupSize,
    this.groupSizeElement,
    this.cost,
    this.comment,
    this.commentElement,
  });

}


@Data()
@JsonCodable()
class InsurancePlanSpecificCost {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept category;
  final List<InsurancePlanBenefit1>? benefit;

  InsurancePlanSpecificCost({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.category,
    this.benefit,
  });

}


@Data()
@JsonCodable()
class InsurancePlanBenefit1 {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final List<InsurancePlanCost>? cost;

  InsurancePlanBenefit1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.cost,
  });

}


@Data()
@JsonCodable()
class InsurancePlanCost {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final CodeableConcept? applicability;
  final List<CodeableConcept>? qualifiers;
  final Quantity? value;

  InsurancePlanCost({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.applicability,
    this.qualifiers,
    this.value,
  });

}



