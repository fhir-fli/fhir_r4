import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Coverage extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
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
    this.status,
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
  }): super(resourceType: R4ResourceType.Coverage);

@override
Coverage clone() => this;

}


@Data()
@JsonCodable()
class CoverageClass {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final FhirString? value;
  final Element? valueElement;
  final FhirString? name;
  final Element? nameElement;

  CoverageClass({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.value,
    this.valueElement,
    this.name,
    this.nameElement,
  });

}


@Data()
@JsonCodable()
class CoverageCostToBeneficiary {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final Quantity? valueQuantity;
  final Money? valueMoney;
  final List<CoverageException>? exception;

  CoverageCostToBeneficiary({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.valueQuantity,
    this.valueMoney,
    this.exception,
  });

}


@Data()
@JsonCodable()
class CoverageException {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final Period? period;

  CoverageException({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.period,
  });

}



