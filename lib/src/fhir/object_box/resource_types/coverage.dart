// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCoverage {
  ObjectBoxCoverage({
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
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? type,
    ObjectBoxReference? policyHolder,
    ObjectBoxReference? subscriber,
    this.subscriberId,
    ObjectBoxElement? subscriberIdElement,
    ObjectBoxReference? beneficiary,
    this.dependent,
    ObjectBoxElement? dependentElement,
    ObjectBoxCodeableConcept? relationship,
    ObjectBoxPeriod? period,
    List<ObjectBoxReference>? payor,
    List<ObjectBoxCoverageClass>? class_,
    this.order,
    ObjectBoxElement? orderElement,
    this.network,
    ObjectBoxElement? networkElement,
    List<ObjectBoxCoverageCostToBeneficiary>? costToBeneficiary,
    this.subrogation,
    ObjectBoxElement? subrogationElement,
    List<ObjectBoxReference>? contract,
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
    this.type.target = type;
    this.policyHolder.target = policyHolder;
    this.subscriber.target = subscriber;
    this.subscriberIdElement.target = subscriberIdElement;
    this.beneficiary.target = beneficiary;
    this.dependentElement.target = dependentElement;
    this.relationship.target = relationship;
    this.period.target = period;
    this.payor.addAll(payor ?? []);
    this.class_.addAll(class_ ?? []);
    this.orderElement.target = orderElement;
    this.networkElement.target = networkElement;
    this.costToBeneficiary.addAll(costToBeneficiary ?? []);
    this.subrogationElement.target = subrogationElement;
    this.contract.addAll(contract ?? []);
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
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> policyHolder = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> subscriber = ToOne<ObjectBoxReference>();
  String? subscriberId;
  ToOne<ObjectBoxElement> subscriberIdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> beneficiary = ToOne<ObjectBoxReference>();
  String? dependent;
  ToOne<ObjectBoxElement> dependentElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> relationship =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxReference> payor = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCoverageClass> class_ = ToMany<ObjectBoxCoverageClass>();
  int? order;
  ToOne<ObjectBoxElement> orderElement = ToOne<ObjectBoxElement>();
  String? network;
  ToOne<ObjectBoxElement> networkElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCoverageCostToBeneficiary> costToBeneficiary =
      ToMany<ObjectBoxCoverageCostToBeneficiary>();
  bool? subrogation;
  ToOne<ObjectBoxElement> subrogationElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> contract = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxCoverageClass {
  ObjectBoxCoverageClass({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    required this.value,
    ObjectBoxElement? valueElement,
    this.name,
    ObjectBoxElement? nameElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.valueElement.target = valueElement;
    this.nameElement.target = nameElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCoverageCostToBeneficiary {
  ObjectBoxCoverageCostToBeneficiary({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxQuantity? valueQuantity,
    ObjectBoxMoney? valueMoney,
    List<ObjectBoxCoverageException>? exception,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.valueQuantity.target = valueQuantity;
    this.valueMoney.target = valueMoney;
    this.exception.addAll(exception ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney> valueMoney = ToOne<ObjectBoxMoney>();
  ToMany<ObjectBoxCoverageException> exception =
      ToMany<ObjectBoxCoverageException>();
}

@Entity()
class ObjectBoxCoverageException {
  ObjectBoxCoverageException({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxPeriod? period,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}
