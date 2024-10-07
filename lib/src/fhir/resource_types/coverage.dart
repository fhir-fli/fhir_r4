import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Coverage extends DomainResource {
  Coverage({
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
  }) : super(resourceType: R4ResourceType.Coverage);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? type;
  final Reference? policyHolder;
  final Reference? subscriber;
  final FhirString? subscriberId;
  final Element? subscriberIdElement;
  final Reference beneficiary;
  final FhirString? dependent;
  final Element? dependentElement;
  final CodeableConcept? relationship;
  final Period? period;
  final List<Reference> payor;
  final List<CoverageClass>? class_;
  final FhirPositiveInt? order;
  final Element? orderElement;
  final FhirString? network;
  final Element? networkElement;
  final List<CoverageCostToBeneficiary>? costToBeneficiary;
  final FhirBoolean? subrogation;
  final Element? subrogationElement;
  final List<Reference>? contract;
  @override
  Coverage clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CoverageClass extends BackboneElement {
  CoverageClass({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.value,
    this.valueElement,
    this.name,
    this.nameElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept type;
  final FhirString value;
  final Element? valueElement;
  final FhirString? name;
  final Element? nameElement;
  @override
  CoverageClass clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CoverageCostToBeneficiary extends BackboneElement {
  CoverageCostToBeneficiary({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    required this.valueQuantity,
    required this.valueMoney,
    this.exception,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? type;
  final Quantity valueQuantity;
  final Money valueMoney;
  final List<CoverageException>? exception;
  @override
  CoverageCostToBeneficiary clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CoverageException extends BackboneElement {
  CoverageException({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept type;
  final Period? period;
  @override
  CoverageException clone() => throw UnimplementedError();
}
