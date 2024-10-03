import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class InsurancePlanEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'InsurancePlan';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToMany()
  List<CodeableConceptEntity>? type;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  List<String>? alias;

  @ToMany()
  List<PrimitiveElementEntity>? aliasElement;

  @ToOne()
  PeriodEntity? period;

  @ToOne()
  ReferenceEntity? ownedBy;

  @ToOne()
  ReferenceEntity? administeredBy;

  @ToMany()
  List<ReferenceEntity>? coverageArea;

  @ToMany()
  List<InsurancePlanContactEntity>? contact;

  @ToMany()
  List<ReferenceEntity>? endpoint;

  @ToMany()
  List<ReferenceEntity>? network;

  @ToMany()
  List<InsurancePlanCoverageEntity>? coverage;

  @ToMany()
  List<InsurancePlanPlanEntity>? plan;
}

class InsurancePlanContactEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? purpose;

  @ToOne()
  HumanNameEntity? name;

  @ToMany()
  List<ContactPointEntity>? telecom;

  @ToOne()
  AddressEntity? address;
}

class InsurancePlanCoverageEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<ReferenceEntity>? network;

  @ToMany()
  List<InsurancePlanBenefitEntity>? benefit;
}

class InsurancePlanBenefitEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  String? requirement;

  @ToOne()
  PrimitiveElementEntity? requirementElement;

  @ToMany()
  List<InsurancePlanLimitEntity>? limit;
}

class InsurancePlanLimitEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  QuantityEntity? value;

  @ToOne()
  CodeableConceptEntity? code;
}

class InsurancePlanPlanEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<ReferenceEntity>? coverageArea;

  @ToMany()
  List<ReferenceEntity>? network;

  @ToMany()
  List<InsurancePlanGeneralCostEntity>? generalCost;

  @ToMany()
  List<InsurancePlanSpecificCostEntity>? specificCost;
}

class InsurancePlanGeneralCostEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  int? groupSize;

  @ToOne()
  PrimitiveElementEntity? groupSizeElement;

  @ToOne()
  MoneyEntity? cost;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;
}

class InsurancePlanSpecificCostEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? category;

  @ToMany()
  List<InsurancePlanBenefit1Entity>? benefit;
}

class InsurancePlanBenefit1Entity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<InsurancePlanCostEntity>? cost;
}

class InsurancePlanCostEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  CodeableConceptEntity? applicability;

  @ToMany()
  List<CodeableConceptEntity>? qualifiers;

  @ToOne()
  QuantityEntity? value;
}
