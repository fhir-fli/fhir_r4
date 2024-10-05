import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class CoverageEligibilityRequest extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final CodeableConcept? priority;
  final List<FhirCode>? purpose;
  final List<Element>? purposeElement;
  final Reference patient;
  final FhirString? servicedDate;
  final Element? servicedDateElement;
  final Period? servicedPeriod;
  final FhirDateTime? created;
  final Element? createdElement;
  final Reference? enterer;
  final Reference? provider;
  final Reference insurer;
  final Reference? facility;
  final List<CoverageEligibilityRequestSupportingInfo>? supportingInfo;
  final List<CoverageEligibilityRequestInsurance>? insurance;
  final List<CoverageEligibilityRequestItem>? item;

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
    this.status,
    this.statusElement,
    this.priority,
    this.purpose,
    this.purposeElement,
    required this.patient,
    this.servicedDate,
    this.servicedDateElement,
    this.servicedPeriod,
    this.created,
    this.createdElement,
    this.enterer,
    this.provider,
    required this.insurer,
    this.facility,
    this.supportingInfo,
    this.insurance,
    this.item,
  }): super(resourceType: R4ResourceType.CoverageEligibilityRequest);

@override
CoverageEligibilityRequest clone() => this;

}


@Data()
@JsonCodable()
class CoverageEligibilityRequestSupportingInfo {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirPositiveInt? sequence;
  final Element? sequenceElement;
  final Reference information;
  final FhirBoolean? appliesToAll;
  final Element? appliesToAllElement;

  CoverageEligibilityRequestSupportingInfo({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.sequence,
    this.sequenceElement,
    required this.information,
    this.appliesToAll,
    this.appliesToAllElement,
  });

}


@Data()
@JsonCodable()
class CoverageEligibilityRequestInsurance {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirBoolean? focal;
  final Element? focalElement;
  final Reference coverage;
  final FhirString? businessArrangement;
  final Element? businessArrangementElement;

  CoverageEligibilityRequestInsurance({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.focal,
    this.focalElement,
    required this.coverage,
    this.businessArrangement,
    this.businessArrangementElement,
  });

}


@Data()
@JsonCodable()
class CoverageEligibilityRequestItem {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<FhirPositiveInt>? supportingInfoSequence;
  final List<Element>? supportingInfoSequenceElement;
  final CodeableConcept? category;
  final CodeableConcept? productOrService;
  final List<CodeableConcept>? modifier;
  final Reference? provider;
  final Quantity? quantity;
  final Money? unitPrice;
  final Reference? facility;
  final List<CoverageEligibilityRequestDiagnosis>? diagnosis;
  final List<Reference>? detail;

  CoverageEligibilityRequestItem({
    this.id,
    this.extension_,
    this.modifierExtension,
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

}


@Data()
@JsonCodable()
class CoverageEligibilityRequestDiagnosis {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? diagnosisCodeableConcept;
  final Reference? diagnosisReference;

  CoverageEligibilityRequestDiagnosis({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
  });

}



