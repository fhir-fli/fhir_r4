// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCoverage {
  ObjectBoxCoverage({
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
    required this.status,
    this.statusElement,
    this.type,
    this.policyHolder,
    this.subscriber,
    this.subscriberId,
    this.subscriberIdElement,
    required this.beneficiary,
    this.dependent,
    this.dependentElement,
    this.relationship,
    this.period,
    required this.payor,
    this.class_,
    this.order,
    this.orderElement,
    this.network,
    this.networkElement,
    this.costToBeneficiary,
    this.subrogation,
    this.subrogationElement,
    this.contract,
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
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? policyHolder = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? subscriber = ToOne<ObjectBoxReference>();
  String? subscriberId;
  ToOne<ObjectBoxElement>? subscriberIdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> beneficiary = ToOne<ObjectBoxReference>();
  String? dependent;
  ToOne<ObjectBoxElement>? dependentElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? relationship =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxReference> payor = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCoverageClass>? class_ = ToMany<ObjectBoxCoverageClass>();
  int? order;
  ToOne<ObjectBoxElement>? orderElement = ToOne<ObjectBoxElement>();
  String? network;
  ToOne<ObjectBoxElement>? networkElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCoverageCostToBeneficiary>? costToBeneficiary =
      ToMany<ObjectBoxCoverageCostToBeneficiary>();
  bool? subrogation;
  ToOne<ObjectBoxElement>? subrogationElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? contract = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxCoverageClass {
  ObjectBoxCoverageClass({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.value,
    this.valueElement,
    this.name,
    this.nameElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCoverageCostToBeneficiary {
  ObjectBoxCoverageCostToBeneficiary({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.valueQuantity,
    this.valueMoney,
    this.exception,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney>? valueMoney = ToOne<ObjectBoxMoney>();
  ToMany<ObjectBoxCoverageException>? exception =
      ToMany<ObjectBoxCoverageException>();
}

@Entity()
class ObjectBoxCoverageException {
  ObjectBoxCoverageException({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
}
