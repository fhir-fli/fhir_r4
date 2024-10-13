// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxInsurancePlan {
  ObjectBoxInsurancePlan({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    this.status,
    ObjectBoxElement? statusElement,
    List<ObjectBoxCodeableConcept>? type,
    this.name,
    ObjectBoxElement? nameElement,
    this.alias,
    List<ObjectBoxElement>? aliasElement,
    ObjectBoxPeriod? period,
    ObjectBoxReference? ownedBy,
    ObjectBoxReference? administeredBy,
    List<ObjectBoxReference>? coverageArea,
    List<ObjectBoxInsurancePlanContact>? contact,
    List<ObjectBoxReference>? endpoint,
    List<ObjectBoxReference>? network,
    List<ObjectBoxInsurancePlanCoverage>? coverage,
    List<ObjectBoxInsurancePlanPlan>? plan,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.type.addAll(type ?? []);
    this.nameElement.target = nameElement;
    this.aliasElement.addAll(aliasElement ?? []);
    this.period.target = period;
    this.ownedBy.target = ownedBy;
    this.administeredBy.target = administeredBy;
    this.coverageArea.addAll(coverageArea ?? []);
    this.contact.addAll(contact ?? []);
    this.endpoint.addAll(endpoint ?? []);
    this.network.addAll(network ?? []);
    this.coverage.addAll(coverage ?? []);
    this.plan.addAll(plan ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  List<String>? alias;
  ToMany<ObjectBoxElement> aliasElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxReference> ownedBy = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> administeredBy = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> coverageArea = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxInsurancePlanContact> contact =
      ToMany<ObjectBoxInsurancePlanContact>();
  ToMany<ObjectBoxReference> endpoint = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> network = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxInsurancePlanCoverage> coverage =
      ToMany<ObjectBoxInsurancePlanCoverage>();
  ToMany<ObjectBoxInsurancePlanPlan> plan =
      ToMany<ObjectBoxInsurancePlanPlan>();
}

@Entity()
class ObjectBoxInsurancePlanContact {
  ObjectBoxInsurancePlanContact({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? purpose,
    ObjectBoxHumanName? name,
    List<ObjectBoxContactPoint>? telecom,
    ObjectBoxAddress? address,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.purpose.target = purpose;
    this.name.target = name;
    this.telecom.addAll(telecom ?? []);
    this.address.target = address;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> purpose = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxHumanName> name = ToOne<ObjectBoxHumanName>();
  ToMany<ObjectBoxContactPoint> telecom = ToMany<ObjectBoxContactPoint>();
  ToOne<ObjectBoxAddress> address = ToOne<ObjectBoxAddress>();
}

@Entity()
class ObjectBoxInsurancePlanCoverage {
  ObjectBoxInsurancePlanCoverage({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxReference>? network,
    List<ObjectBoxInsurancePlanBenefit>? benefit,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.network.addAll(network ?? []);
    this.benefit.addAll(benefit ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> network = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxInsurancePlanBenefit> benefit =
      ToMany<ObjectBoxInsurancePlanBenefit>();
}

@Entity()
class ObjectBoxInsurancePlanBenefit {
  ObjectBoxInsurancePlanBenefit({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    this.requirement,
    ObjectBoxElement? requirementElement,
    List<ObjectBoxInsurancePlanLimit>? limit,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.requirementElement.target = requirementElement;
    this.limit.addAll(limit ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? requirement;
  ToOne<ObjectBoxElement> requirementElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxInsurancePlanLimit> limit =
      ToMany<ObjectBoxInsurancePlanLimit>();
}

@Entity()
class ObjectBoxInsurancePlanLimit {
  ObjectBoxInsurancePlanLimit({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxQuantity? value,
    ObjectBoxCodeableConcept? code,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.value.target = value;
    this.code.target = code;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity> value = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxInsurancePlanPlan {
  ObjectBoxInsurancePlanPlan({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxReference>? coverageArea,
    List<ObjectBoxReference>? network,
    List<ObjectBoxInsurancePlanGeneralCost>? generalCost,
    List<ObjectBoxInsurancePlanSpecificCost>? specificCost,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.type.target = type;
    this.coverageArea.addAll(coverageArea ?? []);
    this.network.addAll(network ?? []);
    this.generalCost.addAll(generalCost ?? []);
    this.specificCost.addAll(specificCost ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> coverageArea = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> network = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxInsurancePlanGeneralCost> generalCost =
      ToMany<ObjectBoxInsurancePlanGeneralCost>();
  ToMany<ObjectBoxInsurancePlanSpecificCost> specificCost =
      ToMany<ObjectBoxInsurancePlanSpecificCost>();
}

@Entity()
class ObjectBoxInsurancePlanGeneralCost {
  ObjectBoxInsurancePlanGeneralCost({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    this.groupSize,
    ObjectBoxElement? groupSizeElement,
    ObjectBoxMoney? cost,
    this.comment,
    ObjectBoxElement? commentElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.groupSizeElement.target = groupSizeElement;
    this.cost.target = cost;
    this.commentElement.target = commentElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  int? groupSize;
  ToOne<ObjectBoxElement> groupSizeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> cost = ToOne<ObjectBoxMoney>();
  String? comment;
  ToOne<ObjectBoxElement> commentElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxInsurancePlanSpecificCost {
  ObjectBoxInsurancePlanSpecificCost({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? category,
    List<ObjectBoxInsurancePlanBenefit>? benefit,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.category.target = category;
    this.benefit.addAll(benefit ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxInsurancePlanBenefit> benefit =
      ToMany<ObjectBoxInsurancePlanBenefit>();
}

@Entity()
class ObjectBoxInsurancePlanBenefit1 {
  ObjectBoxInsurancePlanBenefit1({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxInsurancePlanCost>? cost,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.cost.addAll(cost ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxInsurancePlanCost> cost =
      ToMany<ObjectBoxInsurancePlanCost>();
}

@Entity()
class ObjectBoxInsurancePlanCost {
  ObjectBoxInsurancePlanCost({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? applicability,
    List<ObjectBoxCodeableConcept>? qualifiers,
    ObjectBoxQuantity? value,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.applicability.target = applicability;
    this.qualifiers.addAll(qualifiers ?? []);
    this.value.target = value;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> applicability =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> qualifiers =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> value = ToOne<ObjectBoxQuantity>();
}
