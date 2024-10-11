import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Coverage extends Resource {
  Coverage({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    this.type,
    this.policyHolder,
    this.subscriber,
    this.subscriberId,
    required this.beneficiary,
    this.dependent,
    this.relationship,
    this.period,
    required this.payor,
    this.class_,
    this.order,
    this.network,
    this.costToBeneficiary,
    this.subrogation,
    this.contract,
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
  String status;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Reference>? policyHolder = ToOne<Reference>();
  ToOne<Reference>? subscriber = ToOne<Reference>();
  String? subscriberId;
  ToOne<Reference> beneficiary = ToOne<Reference>();
  String? dependent;
  ToOne<CodeableConcept>? relationship = ToOne<CodeableConcept>();
  ToOne<Period>? period = ToOne<Period>();
  ToMany<Reference> payor = ToMany<Reference>();
  ToMany<CoverageClass>? class_ = ToMany<CoverageClass>();
  int? order;
  String? network;
  ToMany<CoverageCostToBeneficiary>? costToBeneficiary =
      ToMany<CoverageCostToBeneficiary>();
  bool? subrogation;
  ToMany<Reference>? contract = ToMany<Reference>();
}

@Entity()
class CoverageClass {
  CoverageClass({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.value,
    this.name,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  String value;
  String? name;
}

@Entity()
class CoverageCostToBeneficiary {
  CoverageCostToBeneficiary({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  ToOne<Money>? valueMoney = ToOne<Money>();
  ToMany<CoverageException>? exception = ToMany<CoverageException>();
}

@Entity()
class CoverageException {
  CoverageException({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToOne<Period>? period = ToOne<Period>();
}
