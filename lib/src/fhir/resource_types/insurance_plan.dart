import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class InsurancePlan extends DomainResource {
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
  @override
  InsurancePlan clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class InsurancePlanContact extends BackboneElement {
  InsurancePlanContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
  });

  final CodeableConcept? purpose;
  final HumanName? name;
  final List<ContactPoint>? telecom;
  final Address? address;
  @override
  InsurancePlanContact clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class InsurancePlanCoverage extends BackboneElement {
  InsurancePlanCoverage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.network,
    required this.benefit,
  });

  final CodeableConcept type;
  final List<Reference>? network;
  final List<InsurancePlanBenefit> benefit;
  @override
  InsurancePlanCoverage clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class InsurancePlanBenefit extends BackboneElement {
  InsurancePlanBenefit({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.requirement,
    this.requirementElement,
    this.limit,
  });

  final CodeableConcept type;
  final FhirString? requirement;
  final Element? requirementElement;
  final List<InsurancePlanLimit>? limit;
  @override
  InsurancePlanBenefit clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class InsurancePlanLimit extends BackboneElement {
  InsurancePlanLimit({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.value,
    this.code,
  });

  final Quantity? value;
  final CodeableConcept? code;
  @override
  InsurancePlanLimit clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class InsurancePlanPlan extends BackboneElement {
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

  final List<Identifier>? identifier;
  final CodeableConcept? type;
  final List<Reference>? coverageArea;
  final List<Reference>? network;
  final List<InsurancePlanGeneralCost>? generalCost;
  final List<InsurancePlanSpecificCost>? specificCost;
  @override
  InsurancePlanPlan clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class InsurancePlanGeneralCost extends BackboneElement {
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

  final CodeableConcept? type;
  final FhirPositiveInt? groupSize;
  final Element? groupSizeElement;
  final Money? cost;
  final FhirString? comment;
  final Element? commentElement;
  @override
  InsurancePlanGeneralCost clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class InsurancePlanSpecificCost extends BackboneElement {
  InsurancePlanSpecificCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.benefit,
  });

  final CodeableConcept category;
  final List<InsurancePlanBenefit>? benefit;
  @override
  InsurancePlanSpecificCost clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class InsurancePlanBenefit1 extends BackboneElement {
  InsurancePlanBenefit1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.cost,
  });

  final CodeableConcept type;
  final List<InsurancePlanCost>? cost;
  @override
  InsurancePlanBenefit1 clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class InsurancePlanCost extends BackboneElement {
  InsurancePlanCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.applicability,
    this.qualifiers,
    this.value,
  });

  final CodeableConcept type;
  final CodeableConcept? applicability;
  final List<CodeableConcept>? qualifiers;
  final Quantity? value;
  @override
  InsurancePlanCost clone() => throw UnimplementedError();
}
