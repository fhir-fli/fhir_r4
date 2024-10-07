import 'package:dataclass/dataclass.dart';
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
  }) : super(resourceType: R4ResourceType.InsurancePlan);

@override
InsurancePlan clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class InsurancePlanContact extends BackboneElement {
  final CodeableConcept? purpose;
  final HumanName? name;
  final List<ContactPoint>? telecom;
  final Address? address;

  InsurancePlanContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
  });

@override
InsurancePlanContact clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class InsurancePlanCoverage extends BackboneElement {
  final CodeableConcept type;
  final List<Reference>? network;
  final List<InsurancePlanBenefit> benefit;

  InsurancePlanCoverage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.network,
    required this.benefit,
  });

@override
InsurancePlanCoverage clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class InsurancePlanBenefit extends BackboneElement {
  final CodeableConcept type;
  final FhirString? requirement;
  final Element? requirementElement;
  final List<InsurancePlanLimit>? limit;

  InsurancePlanBenefit({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.requirement,
this.requirementElement,
    this.limit,
  });

@override
InsurancePlanBenefit clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class InsurancePlanLimit extends BackboneElement {
  final Quantity? value;
  final CodeableConcept? code;

  InsurancePlanLimit({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.value,
    this.code,
  });

@override
InsurancePlanLimit clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class InsurancePlanPlan extends BackboneElement {
  final List<Identifier>? identifier;
  final CodeableConcept? type;
  final List<Reference>? coverageArea;
  final List<Reference>? network;
  final List<InsurancePlanGeneralCost>? generalCost;
  final List<InsurancePlanSpecificCost>? specificCost;

  InsurancePlanPlan({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.coverageArea,
    this.network,
    this.generalCost,
    this.specificCost,
  });

@override
InsurancePlanPlan clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class InsurancePlanGeneralCost extends BackboneElement {
  final CodeableConcept? type;
  final FhirPositiveInt? groupSize;
  final Element? groupSizeElement;
  final Money? cost;
  final FhirString? comment;
  final Element? commentElement;

  InsurancePlanGeneralCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.groupSize,
this.groupSizeElement,
    this.cost,
    this.comment,
this.commentElement,
  });

@override
InsurancePlanGeneralCost clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class InsurancePlanSpecificCost extends BackboneElement {
  final CodeableConcept category;
  final List<InsurancePlanBenefit>? benefit;

  InsurancePlanSpecificCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.benefit,
  });

@override
InsurancePlanSpecificCost clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class InsurancePlanBenefit1 extends BackboneElement {
  final CodeableConcept type;
  final List<InsurancePlanCost>? cost;

  InsurancePlanBenefit1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.cost,
  });

@override
InsurancePlanBenefit1 clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class InsurancePlanCost extends BackboneElement {
  final CodeableConcept type;
  final CodeableConcept? applicability;
  final List<CodeableConcept>? qualifiers;
  final Quantity? value;

  InsurancePlanCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.applicability,
    this.qualifiers,
    this.value,
  });

@override
InsurancePlanCost clone() => throw UnimplementedError();
}

