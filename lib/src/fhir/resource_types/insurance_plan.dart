import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [InsurancePlan] /// Details of a Health Insurance product/plan provided by an organization.
class InsurancePlan extends DomainResource {
  InsurancePlan({
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
  }) : super(resourceType: R4ResourceType.InsurancePlan);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this health insurance product which remain
  /// constant as the resource is updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [status] /// The current state of the health insurance product.
  final FhirCode? status;
  final Element? statusElement;

  /// [type] /// The kind of health insurance product.
  final List<CodeableConcept>? type;

  /// [name] /// Official name of the health insurance product as designated by the owner.
  final FhirString? name;
  final Element? nameElement;

  /// [alias] /// A list of alternate names that the product is known as, or was known as in
  /// the past.
  final List<FhirString>? alias;
  final List<Element>? aliasElement;

  /// [period] /// The period of time that the health insurance product is available.
  final Period? period;

  /// [ownedBy] /// The entity that is providing the health insurance product and underwriting
  /// the risk. This is typically an insurance carriers, other third-party
  /// payers, or health plan sponsors comonly referred to as 'payers'.
  final Reference? ownedBy;

  /// [administeredBy] /// An organization which administer other services such as underwriting,
  /// customer service and/or claims processing on behalf of the health insurance
  /// product owner.
  final Reference? administeredBy;

  /// [coverageArea] /// The geographic region in which a health insurance product's benefits apply.
  final List<Reference>? coverageArea;

  /// [contact] /// The contact for the health insurance product for a certain purpose.
  final List<InsurancePlanContact>? contact;

  /// [endpoint] /// The technical endpoints providing access to services operated for the
  /// health insurance product.
  final List<Reference>? endpoint;

  /// [network] /// Reference to the network included in the health insurance product.
  final List<Reference>? network;

  /// [coverage] /// Details about the coverage offered by the insurance product.
  final List<InsurancePlanCoverage>? coverage;

  /// [plan] /// Details about an insurance plan.
  final List<InsurancePlanPlan>? plan;
  @override
  InsurancePlan clone() => throw UnimplementedError();
  InsurancePlan copy({
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
    List<CodeableConcept>? type,
    FhirString? name,
    Element? nameElement,
    List<FhirString>? alias,
    List<Element>? aliasElement,
    Period? period,
    Reference? ownedBy,
    Reference? administeredBy,
    List<Reference>? coverageArea,
    List<InsurancePlanContact>? contact,
    List<Reference>? endpoint,
    List<Reference>? network,
    List<InsurancePlanCoverage>? coverage,
    List<InsurancePlanPlan>? plan,
  }) {
    return InsurancePlan(
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
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      alias: alias ?? this.alias,
      aliasElement: aliasElement ?? this.aliasElement,
      period: period ?? this.period,
      ownedBy: ownedBy ?? this.ownedBy,
      administeredBy: administeredBy ?? this.administeredBy,
      coverageArea: coverageArea ?? this.coverageArea,
      contact: contact ?? this.contact,
      endpoint: endpoint ?? this.endpoint,
      network: network ?? this.network,
      coverage: coverage ?? this.coverage,
      plan: plan ?? this.plan,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [InsurancePlanContact] /// The contact for the health insurance product for a certain purpose.
class InsurancePlanContact extends BackboneElement {
  InsurancePlanContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [purpose] /// Indicates a purpose for which the contact can be reached.
  final CodeableConcept? purpose;

  /// [name] /// A name associated with the contact.
  final HumanName? name;

  /// [telecom] /// A contact detail (e.g. a telephone number or an email address) by which the
  /// party may be contacted.
  final List<ContactPoint>? telecom;

  /// [address] /// Visiting or postal addresses for the contact.
  final Address? address;
  @override
  InsurancePlanContact clone() => throw UnimplementedError();
  InsurancePlanContact copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? purpose,
    HumanName? name,
    List<ContactPoint>? telecom,
    Address? address,
  }) {
    return InsurancePlanContact(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      purpose: purpose ?? this.purpose,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      address: address ?? this.address,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [InsurancePlanCoverage] /// Details about the coverage offered by the insurance product.
class InsurancePlanCoverage extends BackboneElement {
  InsurancePlanCoverage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.network,
    required this.benefit,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of coverage (Medical; Dental; Mental Health; Substance Abuse; Vision;
  /// Drug; Short Term; Long Term Care; Hospice; Home Health).
  final CodeableConcept type;

  /// [network] /// Reference to the network that providing the type of coverage.
  final List<Reference>? network;

  /// [benefit] /// Specific benefits under this type of coverage.
  final List<InsurancePlanBenefit> benefit;
  @override
  InsurancePlanCoverage clone() => throw UnimplementedError();
  InsurancePlanCoverage copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Reference>? network,
    List<InsurancePlanBenefit>? benefit,
  }) {
    return InsurancePlanCoverage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      network: network ?? this.network,
      benefit: benefit ?? this.benefit,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [InsurancePlanBenefit] /// Specific benefits under this type of coverage.
class InsurancePlanBenefit extends BackboneElement {
  InsurancePlanBenefit({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.requirement,
    this.requirementElement,
    this.limit,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of benefit (primary care; speciality care; inpatient; outpatient).
  final CodeableConcept type;

  /// [requirement] /// The referral requirements to have access/coverage for this benefit.
  final FhirString? requirement;
  final Element? requirementElement;

  /// [limit] /// The specific limits on the benefit.
  final List<InsurancePlanLimit>? limit;
  @override
  InsurancePlanBenefit clone() => throw UnimplementedError();
  InsurancePlanBenefit copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? requirement,
    Element? requirementElement,
    List<InsurancePlanLimit>? limit,
  }) {
    return InsurancePlanBenefit(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      requirement: requirement ?? this.requirement,
      requirementElement: requirementElement ?? this.requirementElement,
      limit: limit ?? this.limit,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [InsurancePlanLimit] /// The specific limits on the benefit.
class InsurancePlanLimit extends BackboneElement {
  InsurancePlanLimit({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.value,
    this.code,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [value] /// The maximum amount of a service item a plan will pay for a covered benefit.
  /// For examples. wellness visits, or eyeglasses.
  final Quantity? value;

  /// [code] /// The specific limit on the benefit.
  final CodeableConcept? code;
  @override
  InsurancePlanLimit clone() => throw UnimplementedError();
  InsurancePlanLimit copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? value,
    CodeableConcept? code,
  }) {
    return InsurancePlanLimit(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
      code: code ?? this.code,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [InsurancePlanPlan] /// Details about an insurance plan.
class InsurancePlanPlan extends BackboneElement {
  InsurancePlanPlan({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.coverageArea,
    this.network,
    this.generalCost,
    this.specificCost,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this health insurance plan which remain
  /// constant as the resource is updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [type] /// Type of plan. For example, "Platinum" or "High Deductable".
  final CodeableConcept? type;

  /// [coverageArea] /// The geographic region in which a health insurance plan's benefits apply.
  final List<Reference>? coverageArea;

  /// [network] /// Reference to the network that providing the type of coverage.
  final List<Reference>? network;

  /// [generalCost] /// Overall costs associated with the plan.
  final List<InsurancePlanGeneralCost>? generalCost;

  /// [specificCost] /// Costs associated with the coverage provided by the product.
  final List<InsurancePlanSpecificCost>? specificCost;
  @override
  InsurancePlanPlan clone() => throw UnimplementedError();
  InsurancePlanPlan copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? type,
    List<Reference>? coverageArea,
    List<Reference>? network,
    List<InsurancePlanGeneralCost>? generalCost,
    List<InsurancePlanSpecificCost>? specificCost,
  }) {
    return InsurancePlanPlan(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      coverageArea: coverageArea ?? this.coverageArea,
      network: network ?? this.network,
      generalCost: generalCost ?? this.generalCost,
      specificCost: specificCost ?? this.specificCost,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [InsurancePlanGeneralCost] /// Overall costs associated with the plan.
class InsurancePlanGeneralCost extends BackboneElement {
  InsurancePlanGeneralCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.groupSize,
    this.groupSizeElement,
    this.cost,
    this.comment,
    this.commentElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of cost.
  final CodeableConcept? type;

  /// [groupSize] /// Number of participants enrolled in the plan.
  final FhirPositiveInt? groupSize;
  final Element? groupSizeElement;

  /// [cost] /// Value of the cost.
  final Money? cost;

  /// [comment] /// Additional information about the general costs associated with this plan.
  final FhirString? comment;
  final Element? commentElement;
  @override
  InsurancePlanGeneralCost clone() => throw UnimplementedError();
  InsurancePlanGeneralCost copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirPositiveInt? groupSize,
    Element? groupSizeElement,
    Money? cost,
    FhirString? comment,
    Element? commentElement,
  }) {
    return InsurancePlanGeneralCost(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      groupSize: groupSize ?? this.groupSize,
      groupSizeElement: groupSizeElement ?? this.groupSizeElement,
      cost: cost ?? this.cost,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [InsurancePlanSpecificCost] /// Costs associated with the coverage provided by the product.
class InsurancePlanSpecificCost extends BackboneElement {
  InsurancePlanSpecificCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.benefit,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// General category of benefit (Medical; Dental; Vision; Drug; Mental Health;
  /// Substance Abuse; Hospice, Home Health).
  final CodeableConcept category;

  /// [benefit] /// List of the specific benefits under this category of benefit.
  final List<InsurancePlanBenefit>? benefit;
  @override
  InsurancePlanSpecificCost clone() => throw UnimplementedError();
  InsurancePlanSpecificCost copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    List<InsurancePlanBenefit>? benefit,
  }) {
    return InsurancePlanSpecificCost(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      benefit: benefit ?? this.benefit,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [InsurancePlanBenefit1] /// List of the specific benefits under this category of benefit.
class InsurancePlanBenefit1 extends BackboneElement {
  InsurancePlanBenefit1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.cost,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of specific benefit (preventative; primary care office visit;
  /// speciality office visit; hospitalization; emergency room; urgent care).
  final CodeableConcept type;

  /// [cost] /// List of the costs associated with a specific benefit.
  final List<InsurancePlanCost>? cost;
  @override
  InsurancePlanBenefit1 clone() => throw UnimplementedError();
  InsurancePlanBenefit1 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<InsurancePlanCost>? cost,
  }) {
    return InsurancePlanBenefit1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      cost: cost ?? this.cost,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [InsurancePlanCost] /// List of the costs associated with a specific benefit.
class InsurancePlanCost extends BackboneElement {
  InsurancePlanCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.applicability,
    this.qualifiers,
    this.value,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of cost (copay; individual cap; family cap; coinsurance; deductible).
  final CodeableConcept type;

  /// [applicability] /// Whether the cost applies to in-network or out-of-network providers
  /// (in-network; out-of-network; other).
  final CodeableConcept? applicability;

  /// [qualifiers] /// Additional information about the cost, such as information about funding
  /// sources (e.g. HSA, HRA, FSA, RRA).
  final List<CodeableConcept>? qualifiers;

  /// [value] /// The actual cost value. (some of the costs may be represented as percentages
  /// rather than currency, e.g. 10% coinsurance).
  final Quantity? value;
  @override
  InsurancePlanCost clone() => throw UnimplementedError();
  InsurancePlanCost copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? applicability,
    List<CodeableConcept>? qualifiers,
    Quantity? value,
  }) {
    return InsurancePlanCost(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      applicability: applicability ?? this.applicability,
      qualifiers: qualifiers ?? this.qualifiers,
      value: value ?? this.value,
    );
  }
}
