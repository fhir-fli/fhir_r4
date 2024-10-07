import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Coverage extends DomainResource {
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
  final List<BackboneElement>? class_;
  final FhirPositiveInt? order;
  final Element? orderElement;
  final FhirString? network;
  final Element? networkElement;
  final List<BackboneElement>? costToBeneficiary;
  final List<BackboneElement>? exception;
  final FhirBoolean? subrogation;
  final Element? subrogationElement;
  final List<Reference>? contract;

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
    this.exception,
    this.subrogation,
this.subrogationElement,
    this.contract,
  }) : super(resourceType: R4ResourceType.Coverage);

@override
Coverage clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CoverageClass extends BackboneElement {
  final CodeableConcept type;
  final FhirString value;
  final Element? valueElement;
  final FhirString? name;
  final Element? nameElement;

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

@override
CoverageClass clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CoverageCostToBeneficiary extends BackboneElement {
  final CodeableConcept? type;
  final Quantity valueQuantity;
  final Money valueMoney;

  CoverageCostToBeneficiary({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    required this.valueQuantity,
    required this.valueMoney,
  });

@override
CoverageCostToBeneficiary clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CoverageException extends BackboneElement {
  final CodeableConcept type;
  final Period? period;

  CoverageException({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.period,
  });

@override
CoverageException clone() => throw UnimplementedError();
}

