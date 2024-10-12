// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxInsurancePlan {
  ObjectBoxInsurancePlan({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? type = ToMany<ObjectBoxCodeableConcept>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  List<String>? alias;
  ToMany<ObjectBoxElement>? aliasElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxReference>? ownedBy = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? administeredBy = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? coverageArea = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxInsurancePlanContact>? contact =
      ToMany<ObjectBoxInsurancePlanContact>();
  ToMany<ObjectBoxReference>? endpoint = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? network = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxInsurancePlanCoverage>? coverage =
      ToMany<ObjectBoxInsurancePlanCoverage>();
  ToMany<ObjectBoxInsurancePlanPlan>? plan =
      ToMany<ObjectBoxInsurancePlanPlan>();
}

@Entity()
class ObjectBoxInsurancePlanContact {
  ObjectBoxInsurancePlanContact({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? purpose = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxHumanName>? name = ToOne<ObjectBoxHumanName>();
  ToMany<ObjectBoxContactPoint>? telecom = ToMany<ObjectBoxContactPoint>();
  ToOne<ObjectBoxAddress>? address = ToOne<ObjectBoxAddress>();
}

@Entity()
class ObjectBoxInsurancePlanCoverage {
  ObjectBoxInsurancePlanCoverage({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? network = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxInsurancePlanBenefit> benefit =
      ToMany<ObjectBoxInsurancePlanBenefit>();
}

@Entity()
class ObjectBoxInsurancePlanBenefit {
  ObjectBoxInsurancePlanBenefit({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.requirement,
    this.requirementElement,
    this.limit,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? requirement;
  ToOne<ObjectBoxElement>? requirementElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxInsurancePlanLimit>? limit =
      ToMany<ObjectBoxInsurancePlanLimit>();
}

@Entity()
class ObjectBoxInsurancePlanLimit {
  ObjectBoxInsurancePlanLimit({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.value,
    this.code,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity>? value = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxInsurancePlanPlan {
  ObjectBoxInsurancePlanPlan({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? coverageArea = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? network = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxInsurancePlanGeneralCost>? generalCost =
      ToMany<ObjectBoxInsurancePlanGeneralCost>();
  ToMany<ObjectBoxInsurancePlanSpecificCost>? specificCost =
      ToMany<ObjectBoxInsurancePlanSpecificCost>();
}

@Entity()
class ObjectBoxInsurancePlanGeneralCost {
  ObjectBoxInsurancePlanGeneralCost({
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  int? groupSize;
  ToOne<ObjectBoxElement>? groupSizeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney>? cost = ToOne<ObjectBoxMoney>();
  String? comment;
  ToOne<ObjectBoxElement>? commentElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxInsurancePlanSpecificCost {
  ObjectBoxInsurancePlanSpecificCost({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.category,
    this.benefit,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxInsurancePlanBenefit>? benefit =
      ToMany<ObjectBoxInsurancePlanBenefit>();
}

@Entity()
class ObjectBoxInsurancePlanBenefit1 {
  ObjectBoxInsurancePlanBenefit1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.cost,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxInsurancePlanCost>? cost =
      ToMany<ObjectBoxInsurancePlanCost>();
}

@Entity()
class ObjectBoxInsurancePlanCost {
  ObjectBoxInsurancePlanCost({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? applicability =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? qualifiers =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? value = ToOne<ObjectBoxQuantity>();
}
