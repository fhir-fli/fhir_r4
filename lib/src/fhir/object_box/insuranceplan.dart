import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class InsurancePlan extends Resource {
  InsurancePlan({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.type,
    this.name,
    this.alias,
    this.period,
    this.ownedBy,
    this.administeredBy,
    this.coverageArea,
    this.contact,
    this.endpoint,
    this.network,
    this.coverage,
    this.plan,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? status;
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  String? name;
  List<String>? alias;
  ToOne<Period>? period = ToOne<Period>();
  ToOne<Reference>? ownedBy = ToOne<Reference>();
  ToOne<Reference>? administeredBy = ToOne<Reference>();
  ToMany<Reference>? coverageArea = ToMany<Reference>();
  ToMany<InsurancePlanContact>? contact = ToMany<InsurancePlanContact>();
  ToMany<Reference>? endpoint = ToMany<Reference>();
  ToMany<Reference>? network = ToMany<Reference>();
  ToMany<InsurancePlanCoverage>? coverage = ToMany<InsurancePlanCoverage>();
  ToMany<InsurancePlanPlan>? plan = ToMany<InsurancePlanPlan>();
}

@Entity()
class InsurancePlanContact {
  InsurancePlanContact({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? purpose = ToOne<CodeableConcept>();
  ToOne<HumanName>? name = ToOne<HumanName>();
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
  ToOne<Address>? address = ToOne<Address>();
}

@Entity()
class InsurancePlanCoverage {
  InsurancePlanCoverage({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.network,
    required this.benefit,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToMany<Reference>? network = ToMany<Reference>();
  ToMany<InsurancePlanBenefit> benefit = ToMany<InsurancePlanBenefit>();
}

@Entity()
class InsurancePlanBenefit {
  InsurancePlanBenefit({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.requirement,
    this.limit,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  String? requirement;
  ToMany<InsurancePlanLimit>? limit = ToMany<InsurancePlanLimit>();
}

@Entity()
class InsurancePlanLimit {
  InsurancePlanLimit({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.value,
    this.code,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Quantity>? value = ToOne<Quantity>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
}

@Entity()
class InsurancePlanPlan {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<Reference>? coverageArea = ToMany<Reference>();
  ToMany<Reference>? network = ToMany<Reference>();
  ToMany<InsurancePlanGeneralCost>? generalCost =
      ToMany<InsurancePlanGeneralCost>();
  ToMany<InsurancePlanSpecificCost>? specificCost =
      ToMany<InsurancePlanSpecificCost>();
}

@Entity()
class InsurancePlanGeneralCost {
  InsurancePlanGeneralCost({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.groupSize,
    this.cost,
    this.comment,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  int? groupSize;
  ToOne<Money>? cost = ToOne<Money>();
  String? comment;
}

@Entity()
class InsurancePlanSpecificCost {
  InsurancePlanSpecificCost({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.category,
    this.benefit,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> category = ToOne<CodeableConcept>();
  ToMany<InsurancePlanBenefit>? benefit = ToMany<InsurancePlanBenefit>();
}

@Entity()
class InsurancePlanBenefit1 {
  InsurancePlanBenefit1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.cost,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToMany<InsurancePlanCost>? cost = ToMany<InsurancePlanCost>();
}

@Entity()
class InsurancePlanCost {
  InsurancePlanCost({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.applicability,
    this.qualifiers,
    this.value,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? applicability = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? qualifiers = ToMany<CodeableConcept>();
  ToOne<Quantity>? value = ToOne<Quantity>();
}
