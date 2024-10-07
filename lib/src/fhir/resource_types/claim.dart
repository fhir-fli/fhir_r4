import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Claim extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept type;
  final CodeableConcept? subType;
  final FhirCode use;
  final Element? useElement;
  final Reference patient;
  final Period? billablePeriod;
  final FhirDateTime created;
  final Element? createdElement;
  final Reference? enterer;
  final Reference? insurer;
  final Reference provider;
  final CodeableConcept priority;
  final CodeableConcept? fundsReserve;
  final List<BackboneElement>? related;
  final Reference? prescription;
  final Reference? originalPrescription;
  final BackboneElement? payee;
  final Reference? referral;
  final Reference? facility;
  final List<BackboneElement>? careTeam;
  final List<BackboneElement>? supportingInfo;
  final List<BackboneElement>? diagnosis;
  final List<BackboneElement>? procedure;
  final List<BackboneElement> insurance;
  final BackboneElement? accident;
  final List<BackboneElement>? item;
  final List<BackboneElement>? detail;
  final List<BackboneElement>? subDetail;
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
    required this.status,
this.statusElement,
    required this.type,
    this.subType,
    required this.use,
this.useElement,
    required this.patient,
    this.billablePeriod,
    required this.created,
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
    this.detail,
    this.subDetail,
    this.total,
  }) : super(resourceType: R4ResourceType.Claim);

@override
Claim clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimRelated extends BackboneElement {
  final Reference? claim;
  final CodeableConcept? relationship;
  final Identifier? reference;

  ClaimRelated({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
  });

@override
ClaimRelated clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimPayee extends BackboneElement {
  final CodeableConcept type;
  final Reference? party;

  ClaimPayee({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.party,
  });

@override
ClaimPayee clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimCareTeam extends BackboneElement {
  final FhirPositiveInt sequence;
  final Element? sequenceElement;
  final Reference provider;
  final FhirBoolean? responsible;
  final Element? responsibleElement;
  final CodeableConcept? role;
  final CodeableConcept? qualification;

  ClaimCareTeam({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
this.sequenceElement,
    required this.provider,
    this.responsible,
this.responsibleElement,
    this.role,
    this.qualification,
  });

@override
ClaimCareTeam clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimSupportingInfo extends BackboneElement {
  final FhirPositiveInt sequence;
  final Element? sequenceElement;
  final CodeableConcept category;
  final CodeableConcept? code;
  final FhirDate? timingFhirDate;
  final Element? timingFhirDateElement;
  final Period? timingPeriod;
  final FhirBoolean? valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final FhirString? valueFhirString;
  final Element? valueFhirStringElement;
  final Quantity? valueQuantity;
  final Attachment? valueAttachment;
  final Reference? valueReference;
  final CodeableConcept? reason;

  ClaimSupportingInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
this.sequenceElement,
    required this.category,
    this.code,
    this.timingFhirDate,
this.timingFhirDateElement,
    this.timingPeriod,
    this.valueFhirBoolean,
this.valueFhirBooleanElement,
    this.valueFhirString,
this.valueFhirStringElement,
    this.valueQuantity,
    this.valueAttachment,
    this.valueReference,
    this.reason,
  });

@override
ClaimSupportingInfo clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimDiagnosis extends BackboneElement {
  final FhirPositiveInt sequence;
  final Element? sequenceElement;
  final CodeableConcept diagnosisCodeableConcept;
  final Reference diagnosisReference;
  final List<CodeableConcept>? type;
  final CodeableConcept? onAdmission;
  final CodeableConcept? packageCode;

  ClaimDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
this.sequenceElement,
    required this.diagnosisCodeableConcept,
    required this.diagnosisReference,
    this.type,
    this.onAdmission,
    this.packageCode,
  });

@override
ClaimDiagnosis clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimProcedure extends BackboneElement {
  final FhirPositiveInt sequence;
  final Element? sequenceElement;
  final List<CodeableConcept>? type;
  final FhirDateTime? date;
  final Element? dateElement;
  final CodeableConcept procedureCodeableConcept;
  final Reference procedureReference;
  final List<Reference>? udi;

  ClaimProcedure({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
this.sequenceElement,
    this.type,
    this.date,
this.dateElement,
    required this.procedureCodeableConcept,
    required this.procedureReference,
    this.udi,
  });

@override
ClaimProcedure clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimInsurance extends BackboneElement {
  final FhirPositiveInt sequence;
  final Element? sequenceElement;
  final FhirBoolean focal;
  final Element? focalElement;
  final Identifier? identifier;
  final Reference coverage;
  final FhirString? businessArrangement;
  final Element? businessArrangementElement;
  final List<FhirString>? preAuthRef;
  final List<Element>? preAuthRefElement;
  final Reference? claimResponse;

  ClaimInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
this.sequenceElement,
    required this.focal,
this.focalElement,
    this.identifier,
    required this.coverage,
    this.businessArrangement,
this.businessArrangementElement,
    this.preAuthRef,
this.preAuthRefElement,
    this.claimResponse,
  });

@override
ClaimInsurance clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimAccident extends BackboneElement {
  final FhirDate date;
  final Element? dateElement;
  final CodeableConcept? type;
  final Address? locationAddress;
  final Reference? locationReference;

  ClaimAccident({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.date,
this.dateElement,
    this.type,
    this.locationAddress,
    this.locationReference,
  });

@override
ClaimAccident clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimItem extends BackboneElement {
  final FhirPositiveInt sequence;
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
  final FhirDate? servicedFhirDate;
  final Element? servicedFhirDateElement;
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

  ClaimItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
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
    this.servicedFhirDate,
this.servicedFhirDateElement,
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
  });

@override
ClaimItem clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimDetail extends BackboneElement {
  final FhirPositiveInt sequence;
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

  ClaimDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
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

@override
ClaimDetail clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimSubDetail extends BackboneElement {
  final FhirPositiveInt sequence;
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
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
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

@override
ClaimSubDetail clone() => throw UnimplementedError();
}

