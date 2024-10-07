import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Coverage] /// Financial instrument which may be used to reimburse or pay for health care
/// products and services. Includes both insurance and self-payment.
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

  /// [identifier] /// A unique identifier assigned to this coverage.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FhirCode status;
  final Element? statusElement;

  /// [type] /// The type of coverage: social program, medical plan, accident coverage
  /// (workers compensation, auto), group health or payment by an individual or
  /// organization.
  final CodeableConcept? type;

  /// [policyHolder] /// The party who 'owns' the insurance policy.
  final Reference? policyHolder;

  /// [subscriber] /// The party who has signed-up for or 'owns' the contractual relationship to
  /// the policy or to whom the benefit of the policy for services rendered to
  /// them or their family is due.
  final Reference? subscriber;

  /// [subscriberId] /// The insurer assigned ID for the Subscriber.
  final FhirString? subscriberId;
  final Element? subscriberIdElement;

  /// [beneficiary] /// The party who benefits from the insurance coverage; the patient when
  /// products and/or services are provided.
  final Reference beneficiary;

  /// [dependent] /// A unique identifier for a dependent under the coverage.
  final FhirString? dependent;
  final Element? dependentElement;

  /// [relationship] /// The relationship of beneficiary (patient) to the subscriber.
  final CodeableConcept? relationship;

  /// [period] /// Time period during which the coverage is in force. A missing start date
  /// indicates the start date isn't known, a missing end date means the coverage
  /// is continuing to be in force.
  final Period? period;

  /// [payor] /// The program or plan underwriter or payor including both insurance and
  /// non-insurance agreements, such as patient-pay agreements.
  final List<Reference> payor;

  /// [class_] /// A suite of underwriter specific classifiers.
  final List<CoverageClass>? class_;

  /// [order] /// The order of applicability of this coverage relative to other coverages
  /// which are currently in force. Note, there may be gaps in the numbering and
  /// this does not imply primary, secondary etc. as the specific positioning of
  /// coverages depends upon the episode of care.
  final FhirPositiveInt? order;
  final Element? orderElement;

  /// [network] /// The insurer-specific identifier for the insurer-defined network of
  /// providers to which the beneficiary may seek treatment which will be covered
  /// at the 'in-network' rate, otherwise 'out of network' terms and conditions
  /// apply.
  final FhirString? network;
  final Element? networkElement;

  /// [costToBeneficiary] /// A suite of codes indicating the cost category and associated amount which
  /// have been detailed in the policy and may have been included on the health
  /// card.
  final List<CoverageCostToBeneficiary>? costToBeneficiary;

  /// [subrogation] /// When 'subrogation=true' this insurance instance has been included not for
  /// adjudication but to provide insurers with the details to recover costs.
  final FhirBoolean? subrogation;
  final Element? subrogationElement;

  /// [contract] /// The policy(s) which constitute this insurance coverage.
  final List<Reference>? contract;
  @override
  Coverage clone() => throw UnimplementedError();
  Coverage copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? type,
    Reference? policyHolder,
    Reference? subscriber,
    FhirString? subscriberId,
    Element? subscriberIdElement,
    Reference? beneficiary,
    FhirString? dependent,
    Element? dependentElement,
    CodeableConcept? relationship,
    Period? period,
    List<Reference>? payor,
    List<CoverageClass>? class_,
    FhirPositiveInt? order,
    Element? orderElement,
    FhirString? network,
    Element? networkElement,
    List<CoverageCostToBeneficiary>? costToBeneficiary,
    FhirBoolean? subrogation,
    Element? subrogationElement,
    List<Reference>? contract,
  }) {
    return Coverage(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      policyHolder: policyHolder ?? this.policyHolder,
      subscriber: subscriber ?? this.subscriber,
      subscriberId: subscriberId ?? this.subscriberId,
      subscriberIdElement: subscriberIdElement ?? this.subscriberIdElement,
      beneficiary: beneficiary ?? this.beneficiary,
      dependent: dependent ?? this.dependent,
      dependentElement: dependentElement ?? this.dependentElement,
      relationship: relationship ?? this.relationship,
      period: period ?? this.period,
      payor: payor ?? this.payor,
      class_: class_ ?? this.class_,
      order: order ?? this.order,
      orderElement: orderElement ?? this.orderElement,
      network: network ?? this.network,
      networkElement: networkElement ?? this.networkElement,
      costToBeneficiary: costToBeneficiary ?? this.costToBeneficiary,
      subrogation: subrogation ?? this.subrogation,
      subrogationElement: subrogationElement ?? this.subrogationElement,
      contract: contract ?? this.contract,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CoverageClass] /// A suite of underwriter specific classifiers.
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

  /// [type] /// The type of classification for which an insurer-specific class label or
  /// number and optional name is provided, for example may be used to identify a
  /// class of coverage or employer group, Policy, Plan.
  final CodeableConcept type;

  /// [value] /// The alphanumeric string value associated with the insurer issued label.
  final FhirString value;
  final Element? valueElement;

  /// [name] /// A short description for the class.
  final FhirString? name;
  final Element? nameElement;
  @override
  CoverageClass clone() => throw UnimplementedError();
  CoverageClass copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? value,
    Element? valueElement,
    FhirString? name,
    Element? nameElement,
  }) {
    return CoverageClass(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CoverageCostToBeneficiary] /// A suite of codes indicating the cost category and associated amount which
/// have been detailed in the policy and may have been included on the health
/// card.
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

  /// [type] /// The category of patient centric costs associated with treatment.
  final CodeableConcept? type;

  /// [valueQuantity] /// The amount due from the patient for the cost category.
  final Quantity valueQuantity;

  /// [valueMoney] /// The amount due from the patient for the cost category.
  final Money valueMoney;

  /// [exception] /// A suite of codes indicating exceptions or reductions to patient costs and
  /// their effective periods.
  final List<CoverageException>? exception;
  @override
  CoverageCostToBeneficiary clone() => throw UnimplementedError();
  CoverageCostToBeneficiary copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Quantity? valueQuantity,
    Money? valueMoney,
    List<CoverageException>? exception,
  }) {
    return CoverageCostToBeneficiary(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueMoney: valueMoney ?? this.valueMoney,
      exception: exception ?? this.exception,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CoverageException] /// A suite of codes indicating exceptions or reductions to patient costs and
/// their effective periods.
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

  /// [type] /// The code for the specific exception.
  final CodeableConcept type;

  /// [period] /// The timeframe during when the exception is in force.
  final Period? period;
  @override
  CoverageException clone() => throw UnimplementedError();
  CoverageException copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Period? period,
  }) {
    return CoverageException(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      period: period ?? this.period,
    );
  }
}
