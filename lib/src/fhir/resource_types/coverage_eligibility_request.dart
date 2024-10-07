import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [CoverageEligibilityRequest] /// The CoverageEligibilityRequest provides patient and insurance coverage
/// information to an insurer for them to respond, in the form of an
/// CoverageEligibilityResponse, with information regarding whether the stated
/// coverage is valid and in-force and optionally to provide the insurance
/// details of the policy.
class CoverageEligibilityRequest extends DomainResource {
  CoverageEligibilityRequest({
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
    this.priority,
    required this.purpose,
    this.purposeElement,
    required this.patient,
    this.servicedDate,
    this.servicedDateElement,
    this.servicedPeriod,
    required this.created,
    this.createdElement,
    this.enterer,
    this.provider,
    required this.insurer,
    this.facility,
    this.supportingInfo,
    this.insurance,
    this.item,
  }) : super(resourceType: R4ResourceType.CoverageEligibilityRequest);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this coverage eligiblity request.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FhirCode status;
  final Element? statusElement;

  /// [priority] /// When the requestor expects the processor to complete processing.
  final CodeableConcept? priority;

  /// [purpose] /// Code to specify whether requesting: prior authorization requirements for
  /// some service categories or billing codes; benefits for coverages specified
  /// or discovered; discovery and return of coverages for the patient; and/or
  /// validation that the specified coverage is in-force at the date/period
  /// specified or 'now' if not specified.
  final List<FhirCode> purpose;
  final List<Element>? purposeElement;

  /// [patient] /// The party who is the beneficiary of the supplied coverage and for whom
  /// eligibility is sought.
  final Reference patient;

  /// [servicedDate] /// The date or dates when the enclosed suite of services were performed or
  /// completed.
  final FhirDate? servicedDate;
  final Element? servicedDateElement;

  /// [servicedPeriod] /// The date or dates when the enclosed suite of services were performed or
  /// completed.
  final Period? servicedPeriod;

  /// [created] /// The date when this resource was created.
  final FhirDateTime created;
  final Element? createdElement;

  /// [enterer] /// Person who created the request.
  final Reference? enterer;

  /// [provider] /// The provider which is responsible for the request.
  final Reference? provider;

  /// [insurer] /// The Insurer who issued the coverage in question and is the recipient of the
  /// request.
  final Reference insurer;

  /// [facility] /// Facility where the services are intended to be provided.
  final Reference? facility;

  /// [supportingInfo] /// Additional information codes regarding exceptions, special considerations,
  /// the condition, situation, prior or concurrent issues.
  final List<CoverageEligibilityRequestSupportingInfo>? supportingInfo;

  /// [insurance] /// Financial instruments for reimbursement for the health care products and
  /// services.
  final List<CoverageEligibilityRequestInsurance>? insurance;

  /// [item] /// Service categories or billable services for which benefit details and/or an
  /// authorization prior to service delivery may be required by the payor.
  final List<CoverageEligibilityRequestItem>? item;
  @override
  CoverageEligibilityRequest clone() => throw UnimplementedError();
  CoverageEligibilityRequest copy({
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
    CodeableConcept? priority,
    List<FhirCode>? purpose,
    List<Element>? purposeElement,
    Reference? patient,
    FhirDate? servicedDate,
    Element? servicedDateElement,
    Period? servicedPeriod,
    FhirDateTime? created,
    Element? createdElement,
    Reference? enterer,
    Reference? provider,
    Reference? insurer,
    Reference? facility,
    List<CoverageEligibilityRequestSupportingInfo>? supportingInfo,
    List<CoverageEligibilityRequestInsurance>? insurance,
    List<CoverageEligibilityRequestItem>? item,
  }) {
    return CoverageEligibilityRequest(
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
      priority: priority ?? this.priority,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      patient: patient ?? this.patient,
      servicedDate: servicedDate ?? this.servicedDate,
      servicedDateElement: servicedDateElement ?? this.servicedDateElement,
      servicedPeriod: servicedPeriod ?? this.servicedPeriod,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      enterer: enterer ?? this.enterer,
      provider: provider ?? this.provider,
      insurer: insurer ?? this.insurer,
      facility: facility ?? this.facility,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      insurance: insurance ?? this.insurance,
      item: item ?? this.item,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CoverageEligibilityRequestSupportingInfo] /// Additional information codes regarding exceptions, special considerations,
/// the condition, situation, prior or concurrent issues.
class CoverageEligibilityRequestSupportingInfo extends BackboneElement {
  CoverageEligibilityRequestSupportingInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    required this.information,
    this.appliesToAll,
    this.appliesToAllElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify supporting information entries.
  final FhirPositiveInt sequence;
  final Element? sequenceElement;

  /// [information] /// Additional data or information such as resources, documents, images etc.
  /// including references to the data or the actual inclusion of the data.
  final Reference information;

  /// [appliesToAll] /// The supporting materials are applicable for all detail items,
  /// product/servce categories and specific billing codes.
  final FhirBoolean? appliesToAll;
  final Element? appliesToAllElement;
  @override
  CoverageEligibilityRequestSupportingInfo clone() =>
      throw UnimplementedError();
  CoverageEligibilityRequestSupportingInfo copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    Reference? information,
    FhirBoolean? appliesToAll,
    Element? appliesToAllElement,
  }) {
    return CoverageEligibilityRequestSupportingInfo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      information: information ?? this.information,
      appliesToAll: appliesToAll ?? this.appliesToAll,
      appliesToAllElement: appliesToAllElement ?? this.appliesToAllElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CoverageEligibilityRequestInsurance] /// Financial instruments for reimbursement for the health care products and
/// services.
class CoverageEligibilityRequestInsurance extends BackboneElement {
  CoverageEligibilityRequestInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.focal,
    this.focalElement,
    required this.coverage,
    this.businessArrangement,
    this.businessArrangementElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [focal] /// A flag to indicate that this Coverage is to be used for evaluation of this
  /// request when set to true.
  final FhirBoolean? focal;
  final Element? focalElement;

  /// [coverage] /// Reference to the insurance card level information contained in the Coverage
  /// resource. The coverage issuing insurer will use these details to locate the
  /// patient's actual coverage within the insurer's information system.
  final Reference coverage;

  /// [businessArrangement] /// A business agreement number established between the provider and the
  /// insurer for special business processing purposes.
  final FhirString? businessArrangement;
  final Element? businessArrangementElement;
  @override
  CoverageEligibilityRequestInsurance clone() => throw UnimplementedError();
  CoverageEligibilityRequestInsurance copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? focal,
    Element? focalElement,
    Reference? coverage,
    FhirString? businessArrangement,
    Element? businessArrangementElement,
  }) {
    return CoverageEligibilityRequestInsurance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      focal: focal ?? this.focal,
      focalElement: focalElement ?? this.focalElement,
      coverage: coverage ?? this.coverage,
      businessArrangement: businessArrangement ?? this.businessArrangement,
      businessArrangementElement:
          businessArrangementElement ?? this.businessArrangementElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CoverageEligibilityRequestItem] /// Service categories or billable services for which benefit details and/or an
/// authorization prior to service delivery may be required by the payor.
class CoverageEligibilityRequestItem extends BackboneElement {
  CoverageEligibilityRequestItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.supportingInfoSequence,
    this.supportingInfoSequenceElement,
    this.category,
    this.productOrService,
    this.modifier,
    this.provider,
    this.quantity,
    this.unitPrice,
    this.facility,
    this.diagnosis,
    this.detail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [supportingInfoSequence] /// Exceptions, special conditions and supporting information applicable for
  /// this service or product line.
  final List<FhirPositiveInt>? supportingInfoSequence;
  final List<Element>? supportingInfoSequenceElement;

  /// [category] /// Code to identify the general type of benefits under which products and
  /// services are provided.
  final CodeableConcept? category;

  /// [productOrService] /// This contains the product, service, drug or other billing code for the
  /// item.
  final CodeableConcept? productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  final List<CodeableConcept>? modifier;

  /// [provider] /// The practitioner who is responsible for the product or service to be
  /// rendered to the patient.
  final Reference? provider;

  /// [quantity] /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice] /// The amount charged to the patient by the provider for a single unit.
  final Money? unitPrice;

  /// [facility] /// Facility where the services will be provided.
  final Reference? facility;

  /// [diagnosis] /// Patient diagnosis for which care is sought.
  final List<CoverageEligibilityRequestDiagnosis>? diagnosis;

  /// [detail] /// The plan/proposal/order describing the proposed service in detail.
  final List<Reference>? detail;
  @override
  CoverageEligibilityRequestItem clone() => throw UnimplementedError();
  CoverageEligibilityRequestItem copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirPositiveInt>? supportingInfoSequence,
    List<Element>? supportingInfoSequenceElement,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Reference? provider,
    Quantity? quantity,
    Money? unitPrice,
    Reference? facility,
    List<CoverageEligibilityRequestDiagnosis>? diagnosis,
    List<Reference>? detail,
  }) {
    return CoverageEligibilityRequestItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      supportingInfoSequence:
          supportingInfoSequence ?? this.supportingInfoSequence,
      supportingInfoSequenceElement:
          supportingInfoSequenceElement ?? this.supportingInfoSequenceElement,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      provider: provider ?? this.provider,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      facility: facility ?? this.facility,
      diagnosis: diagnosis ?? this.diagnosis,
      detail: detail ?? this.detail,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CoverageEligibilityRequestDiagnosis] /// Patient diagnosis for which care is sought.
class CoverageEligibilityRequestDiagnosis extends BackboneElement {
  CoverageEligibilityRequestDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [diagnosisCodeableConcept] /// The nature of illness or problem in a coded form or as a reference to an
  /// external defined Condition.
  final CodeableConcept? diagnosisCodeableConcept;

  /// [diagnosisReference] /// The nature of illness or problem in a coded form or as a reference to an
  /// external defined Condition.
  final Reference? diagnosisReference;
  @override
  CoverageEligibilityRequestDiagnosis clone() => throw UnimplementedError();
  CoverageEligibilityRequestDiagnosis copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? diagnosisCodeableConcept,
    Reference? diagnosisReference,
  }) {
    return CoverageEligibilityRequestDiagnosis(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      diagnosisCodeableConcept:
          diagnosisCodeableConcept ?? this.diagnosisCodeableConcept,
      diagnosisReference: diagnosisReference ?? this.diagnosisReference,
    );
  }
}
