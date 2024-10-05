import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Claim extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final CodeableConcept type;
  final CodeableConcept? subType;
  final FhirCode? use;
  final Element? useElement;
  final Reference patient;
  final Period? billablePeriod;
  final FhirDateTime? created;
  final Element? createdElement;
  final Reference? enterer;
  final Reference? insurer;
  final Reference provider;
  final CodeableConcept priority;
  final CodeableConcept? fundsReserve;
  final List<ClaimRelated>? related;
  final Reference? prescription;
  final Reference? originalPrescription;
  final ClaimPayee? payee;
  final Reference? referral;
  final Reference? facility;
  final List<ClaimCareTeam>? careTeam;
  final List<ClaimSupportingInfo>? supportingInfo;
  final List<ClaimDiagnosis>? diagnosis;
  final List<ClaimProcedure>? procedure;
  final List<ClaimInsurance> insurance;
  final ClaimAccident? accident;
  final List<ClaimItem>? item;
  final Money? total;

  Claim({
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
    required this.type,
    this.subType,
    this.use,
    this.useElement,
    required this.patient,
    this.billablePeriod,
    this.created,
    this.createdElement,
    this.enterer,
    this.insurer,
    required this.provider,
    required this.priority,
    this.fundsReserve,
    this.related,
    this.prescription,
    this.originalPrescription,
    this.payee,
    this.referral,
    this.facility,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    required this.insurance,
    this.accident,
    this.item,
    this.total,
  }): super(resourceType: R4ResourceType.Claim);

@override
Claim clone() => this;

}


@Data()
@JsonCodable()
class ClaimRelated {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference? claim;
  final CodeableConcept? relationship;
  final Identifier? reference;

  ClaimRelated({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
  });

}


@Data()
@JsonCodable()
class ClaimPayee {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final Reference? party;

  ClaimPayee({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.party,
  });

}


@Data()
@JsonCodable()
class ClaimCareTeam {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirPositiveInt? sequence;
  final Element? sequenceElement;
  final Reference provider;
  final FhirBoolean? responsible;
  final Element? responsibleElement;
  final CodeableConcept? role;
  final CodeableConcept? qualification;

  ClaimCareTeam({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.sequence,
    this.sequenceElement,
    required this.provider,
    this.responsible,
    this.responsibleElement,
    this.role,
    this.qualification,
  });

}


@Data()
@JsonCodable()
class ClaimSupportingInfo {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirPositiveInt? sequence;
  final Element? sequenceElement;
  final CodeableConcept category;
  final CodeableConcept? code;
  final FhirString? timingDate;
  final Element? timingDateElement;
  final Period? timingPeriod;
  final bool? valueBoolean;
  final Element? valueBooleanElement;
  final FhirString? valueString;
  final Element? valueStringElement;
  final Quantity? valueQuantity;
  final Attachment? valueAttachment;
  final Reference? valueReference;
  final CodeableConcept? reason;

  ClaimSupportingInfo({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.sequence,
    this.sequenceElement,
    required this.category,
    this.code,
    this.timingDate,
    this.timingDateElement,
    this.timingPeriod,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueString,
    this.valueStringElement,
    this.valueQuantity,
    this.valueAttachment,
    this.valueReference,
    this.reason,
  });

}


@Data()
@JsonCodable()
class ClaimDiagnosis {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirPositiveInt? sequence;
  final Element? sequenceElement;
  final CodeableConcept? diagnosisCodeableConcept;
  final Reference? diagnosisReference;
  final List<CodeableConcept>? type;
  final CodeableConcept? onAdmission;
  final CodeableConcept? packageCode;

  ClaimDiagnosis({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.sequence,
    this.sequenceElement,
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
    this.type,
    this.onAdmission,
    this.packageCode,
  });

}


@Data()
@JsonCodable()
class ClaimProcedure {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirPositiveInt? sequence;
  final Element? sequenceElement;
  final List<CodeableConcept>? type;
  final FhirDateTime? date;
  final Element? dateElement;
  final CodeableConcept? procedureCodeableConcept;
  final Reference? procedureReference;
  final List<Reference>? udi;

  ClaimProcedure({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.sequence,
    this.sequenceElement,
    this.type,
    this.date,
    this.dateElement,
    this.procedureCodeableConcept,
    this.procedureReference,
    this.udi,
  });

}


@Data()
@JsonCodable()
class ClaimInsurance {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirPositiveInt? sequence;
  final Element? sequenceElement;
  final FhirBoolean? focal;
  final Element? focalElement;
  final Identifier? identifier;
  final Reference coverage;
  final FhirString? businessArrangement;
  final Element? businessArrangementElement;
  final List<FhirString>? preAuthRef;
  final List<Element>? preAuthRefElement;
  final Reference? claimResponse;

  ClaimInsurance({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.sequence,
    this.sequenceElement,
    this.focal,
    this.focalElement,
    this.identifier,
    required this.coverage,
    this.businessArrangement,
    this.businessArrangementElement,
    this.preAuthRef,
    this.preAuthRefElement,
    this.claimResponse,
  });

}


@Data()
@JsonCodable()
class ClaimAccident {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirDate? date;
  final Element? dateElement;
  final CodeableConcept? type;
  final Address? locationAddress;
  final Reference? locationReference;

  ClaimAccident({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.date,
    this.dateElement,
    this.type,
    this.locationAddress,
    this.locationReference,
  });

}


@Data()
@JsonCodable()
class ClaimItem {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirPositiveInt? sequence;
  final Element? sequenceElement;
  final List<FhirPositiveInt>? careTeamSequence;
  final List<Element>? careTeamSequenceElement;
  final List<FhirPositiveInt>? diagnosisSequence;
  final List<Element>? diagnosisSequenceElement;
  final List<FhirPositiveInt>? procedureSequence;
  final List<Element>? procedureSequenceElement;
  final List<FhirPositiveInt>? informationSequence;
  final List<Element>? informationSequenceElement;
  final CodeableConcept? revenue;
  final CodeableConcept? category;
  final CodeableConcept productOrService;
  final List<CodeableConcept>? modifier;
  final List<CodeableConcept>? programCode;
  final FhirString? servicedDate;
  final Element? servicedDateElement;
  final Period? servicedPeriod;
  final CodeableConcept? locationCodeableConcept;
  final Address? locationAddress;
  final Reference? locationReference;
  final Quantity? quantity;
  final Money? unitPrice;
  final FhirDecimal? factor;
  final Element? factorElement;
  final Money? net;
  final List<Reference>? udi;
  final CodeableConcept? bodySite;
  final List<CodeableConcept>? subSite;
  final List<Reference>? encounter;
  final List<ClaimDetail>? detail;

  ClaimItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.sequence,
    this.sequenceElement,
    this.careTeamSequence,
    this.careTeamSequenceElement,
    this.diagnosisSequence,
    this.diagnosisSequenceElement,
    this.procedureSequence,
    this.procedureSequenceElement,
    this.informationSequence,
    this.informationSequenceElement,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.servicedDateElement,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.udi,
    this.bodySite,
    this.subSite,
    this.encounter,
    this.detail,
  });

}


@Data()
@JsonCodable()
class ClaimDetail {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirPositiveInt? sequence;
  final Element? sequenceElement;
  final CodeableConcept? revenue;
  final CodeableConcept? category;
  final CodeableConcept productOrService;
  final List<CodeableConcept>? modifier;
  final List<CodeableConcept>? programCode;
  final Quantity? quantity;
  final Money? unitPrice;
  final FhirDecimal? factor;
  final Element? factorElement;
  final Money? net;
  final List<Reference>? udi;
  final List<ClaimSubDetail>? subDetail;

  ClaimDetail({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.sequence,
    this.sequenceElement,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.udi,
    this.subDetail,
  });

}


@Data()
@JsonCodable()
class ClaimSubDetail {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirPositiveInt? sequence;
  final Element? sequenceElement;
  final CodeableConcept? revenue;
  final CodeableConcept? category;
  final CodeableConcept productOrService;
  final List<CodeableConcept>? modifier;
  final List<CodeableConcept>? programCode;
  final Quantity? quantity;
  final Money? unitPrice;
  final FhirDecimal? factor;
  final Element? factorElement;
  final Money? net;
  final List<Reference>? udi;

  ClaimSubDetail({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.sequence,
    this.sequenceElement,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.udi,
  });

}



