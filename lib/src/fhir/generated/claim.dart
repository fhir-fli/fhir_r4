import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Claim {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept type;
  final CodeableConcept subType;
  final FhirCode use;
  final PrimitiveElement useElement;
  final Reference patient;
  final Period billablePeriod;
  final FhirDateTime created;
  final PrimitiveElement createdElement;
  final Reference enterer;
  final Reference insurer;
  final Reference provider;
  final CodeableConcept priority;
  final CodeableConcept fundsReserve;
  final List<ClaimRelated> related;
  final Reference prescription;
  final Reference originalPrescription;
  final ClaimPayee payee;
  final Reference referral;
  final Reference facility;
  final List<ClaimCareTeam> careTeam;
  final List<ClaimSupportingInfo> supportingInfo;
  final List<ClaimDiagnosis> diagnosis;
  final List<ClaimProcedure> procedure;
  final List<ClaimInsurance> insurance;
  final ClaimAccident accident;
  final List<ClaimItem> item;
  final Money total;
  const Claim({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.type,
    required this.subType,
    required this.use,
    required this.useElement,
    required this.patient,
    required this.billablePeriod,
    required this.created,
    required this.createdElement,
    required this.enterer,
    required this.insurer,
    required this.provider,
    required this.priority,
    required this.fundsReserve,
    required this.related,
    required this.prescription,
    required this.originalPrescription,
    required this.payee,
    required this.referral,
    required this.facility,
    required this.careTeam,
    required this.supportingInfo,
    required this.diagnosis,
    required this.procedure,
    required this.insurance,
    required this.accident,
    required this.item,
    required this.total,
  });
}

@Data()
@JsonCodable()
class ClaimRelated {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference claim;
  final CodeableConcept relationship;
  final Identifier reference;
  const ClaimRelated({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.claim,
    required this.relationship,
    required this.reference,
  });
}

@Data()
@JsonCodable()
class ClaimPayee {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Reference party;
  const ClaimPayee({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.party,
  });
}

@Data()
@JsonCodable()
class ClaimCareTeam {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final Reference provider;
  final FhirBoolean responsible;
  final PrimitiveElement responsibleElement;
  final CodeableConcept role;
  final CodeableConcept qualification;
  const ClaimCareTeam({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.sequence,
    required this.sequenceElement,
    required this.provider,
    required this.responsible,
    required this.responsibleElement,
    required this.role,
    required this.qualification,
  });
}

@Data()
@JsonCodable()
class ClaimSupportingInfo {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final CodeableConcept category;
  final CodeableConcept code;
  final String timingDate;
  final PrimitiveElement timingDateElement;
  final Period timingPeriod;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final Quantity valueQuantity;
  final Attachment valueAttachment;
  final Reference valueReference;
  final CodeableConcept reason;
  const ClaimSupportingInfo({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.sequence,
    required this.sequenceElement,
    required this.category,
    required this.code,
    required this.timingDate,
    required this.timingDateElement,
    required this.timingPeriod,
    required this.valueBoolean,
    required this.valueBooleanElement,
    required this.valueString,
    required this.valueStringElement,
    required this.valueQuantity,
    required this.valueAttachment,
    required this.valueReference,
    required this.reason,
  });
}

@Data()
@JsonCodable()
class ClaimDiagnosis {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final CodeableConcept diagnosisCodeableConcept;
  final Reference diagnosisReference;
  final List<CodeableConcept> type;
  final CodeableConcept onAdmission;
  final CodeableConcept packageCode;
  const ClaimDiagnosis({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.sequence,
    required this.sequenceElement,
    required this.diagnosisCodeableConcept,
    required this.diagnosisReference,
    required this.type,
    required this.onAdmission,
    required this.packageCode,
  });
}

@Data()
@JsonCodable()
class ClaimProcedure {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final List<CodeableConcept> type;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final CodeableConcept procedureCodeableConcept;
  final Reference procedureReference;
  final List<Reference> udi;
  const ClaimProcedure({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.sequence,
    required this.sequenceElement,
    required this.type,
    required this.date,
    required this.dateElement,
    required this.procedureCodeableConcept,
    required this.procedureReference,
    required this.udi,
  });
}

@Data()
@JsonCodable()
class ClaimInsurance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final FhirBoolean focal;
  final PrimitiveElement focalElement;
  final Identifier identifier;
  final Reference coverage;
  final String businessArrangement;
  final PrimitiveElement businessArrangementElement;
  final List<String> preAuthRef;
  final List<PrimitiveElement> preAuthRefElement;
  final Reference claimResponse;
  const ClaimInsurance({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.sequence,
    required this.sequenceElement,
    required this.focal,
    required this.focalElement,
    required this.identifier,
    required this.coverage,
    required this.businessArrangement,
    required this.businessArrangementElement,
    required this.preAuthRef,
    required this.preAuthRefElement,
    required this.claimResponse,
  });
}

@Data()
@JsonCodable()
class ClaimAccident {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirDate date;
  final PrimitiveElement dateElement;
  final CodeableConcept type;
  final Address locationAddress;
  final Reference locationReference;
  const ClaimAccident({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.date,
    required this.dateElement,
    required this.type,
    required this.locationAddress,
    required this.locationReference,
  });
}

@Data()
@JsonCodable()
class ClaimItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final List<FhirPositiveInt> careTeamSequence;
  final List<PrimitiveElement> careTeamSequenceElement;
  final List<FhirPositiveInt> diagnosisSequence;
  final List<PrimitiveElement> diagnosisSequenceElement;
  final List<FhirPositiveInt> procedureSequence;
  final List<PrimitiveElement> procedureSequenceElement;
  final List<FhirPositiveInt> informationSequence;
  final List<PrimitiveElement> informationSequenceElement;
  final CodeableConcept revenue;
  final CodeableConcept category;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final List<CodeableConcept> programCode;
  final String servicedDate;
  final PrimitiveElement servicedDateElement;
  final Period servicedPeriod;
  final CodeableConcept locationCodeableConcept;
  final Address locationAddress;
  final Reference locationReference;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final Money net;
  final List<Reference> udi;
  final CodeableConcept bodySite;
  final List<CodeableConcept> subSite;
  final List<Reference> encounter;
  final List<ClaimDetail> detail;
  const ClaimItem({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.sequence,
    required this.sequenceElement,
    required this.careTeamSequence,
    required this.careTeamSequenceElement,
    required this.diagnosisSequence,
    required this.diagnosisSequenceElement,
    required this.procedureSequence,
    required this.procedureSequenceElement,
    required this.informationSequence,
    required this.informationSequenceElement,
    required this.revenue,
    required this.category,
    required this.productOrService,
    required this.modifier,
    required this.programCode,
    required this.servicedDate,
    required this.servicedDateElement,
    required this.servicedPeriod,
    required this.locationCodeableConcept,
    required this.locationAddress,
    required this.locationReference,
    required this.quantity,
    required this.unitPrice,
    required this.factor,
    required this.factorElement,
    required this.net,
    required this.udi,
    required this.bodySite,
    required this.subSite,
    required this.encounter,
    required this.detail,
  });
}

@Data()
@JsonCodable()
class ClaimDetail {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final CodeableConcept revenue;
  final CodeableConcept category;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final List<CodeableConcept> programCode;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final Money net;
  final List<Reference> udi;
  final List<ClaimSubDetail> subDetail;
  const ClaimDetail({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.sequence,
    required this.sequenceElement,
    required this.revenue,
    required this.category,
    required this.productOrService,
    required this.modifier,
    required this.programCode,
    required this.quantity,
    required this.unitPrice,
    required this.factor,
    required this.factorElement,
    required this.net,
    required this.udi,
    required this.subDetail,
  });
}

@Data()
@JsonCodable()
class ClaimSubDetail {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final CodeableConcept revenue;
  final CodeableConcept category;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final List<CodeableConcept> programCode;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final Money net;
  final List<Reference> udi;
  const ClaimSubDetail({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.sequence,
    required this.sequenceElement,
    required this.revenue,
    required this.category,
    required this.productOrService,
    required this.modifier,
    required this.programCode,
    required this.quantity,
    required this.unitPrice,
    required this.factor,
    required this.factorElement,
    required this.net,
    required this.udi,
  });
}

@Data()
@JsonCodable()
class ClaimResponse {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept type;
  final CodeableConcept subType;
  final FhirCode use;
  final PrimitiveElement useElement;
  final Reference patient;
  final FhirDateTime created;
  final PrimitiveElement createdElement;
  final Reference insurer;
  final Reference requestor;
  final Reference request;
  final FhirCode outcome;
  final PrimitiveElement outcomeElement;
  final String disposition;
  final PrimitiveElement dispositionElement;
  final String preAuthRef;
  final PrimitiveElement preAuthRefElement;
  final Period preAuthPeriod;
  final CodeableConcept payeeType;
  final List<ClaimResponseItem> item;
  final List<ClaimResponseAddItem> addItem;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseTotal> total;
  final ClaimResponsePayment payment;
  final CodeableConcept fundsReserve;
  final CodeableConcept formCode;
  final Attachment form;
  final List<ClaimResponseProcessNote> processNote;
  final List<Reference> communicationRequest;
  final List<ClaimResponseInsurance> insurance;
  final List<ClaimResponseError> error;
  const ClaimResponse({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.type,
    required this.subType,
    required this.use,
    required this.useElement,
    required this.patient,
    required this.created,
    required this.createdElement,
    required this.insurer,
    required this.requestor,
    required this.request,
    required this.outcome,
    required this.outcomeElement,
    required this.disposition,
    required this.dispositionElement,
    required this.preAuthRef,
    required this.preAuthRefElement,
    required this.preAuthPeriod,
    required this.payeeType,
    required this.item,
    required this.addItem,
    required this.adjudication,
    required this.total,
    required this.payment,
    required this.fundsReserve,
    required this.formCode,
    required this.form,
    required this.processNote,
    required this.communicationRequest,
    required this.insurance,
    required this.error,
  });
}

@Data()
@JsonCodable()
class ClaimResponseItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt itemSequence;
  final PrimitiveElement itemSequenceElement;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseDetail> detail;
  const ClaimResponseItem({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.itemSequence,
    required this.itemSequenceElement,
    required this.noteNumber,
    required this.noteNumberElement,
    required this.adjudication,
    required this.detail,
  });
}

@Data()
@JsonCodable()
class ClaimResponseAdjudication {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final CodeableConcept reason;
  final Money amount;
  final FhirDecimal value;
  final PrimitiveElement valueElement;
  const ClaimResponseAdjudication({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.category,
    required this.reason,
    required this.amount,
    required this.value,
    required this.valueElement,
  });
}

@Data()
@JsonCodable()
class ClaimResponseDetail {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt detailSequence;
  final PrimitiveElement detailSequenceElement;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseSubDetail> subDetail;
  const ClaimResponseDetail({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.detailSequence,
    required this.detailSequenceElement,
    required this.noteNumber,
    required this.noteNumberElement,
    required this.adjudication,
    required this.subDetail,
  });
}

@Data()
@JsonCodable()
class ClaimResponseSubDetail {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt subDetailSequence;
  final PrimitiveElement subDetailSequenceElement;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ClaimResponseAdjudication> adjudication;
  const ClaimResponseSubDetail({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.subDetailSequence,
    required this.subDetailSequenceElement,
    required this.noteNumber,
    required this.noteNumberElement,
    required this.adjudication,
  });
}

@Data()
@JsonCodable()
class ClaimResponseAddItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<FhirPositiveInt> itemSequence;
  final List<PrimitiveElement> itemSequenceElement;
  final List<FhirPositiveInt> detailSequence;
  final List<PrimitiveElement> detailSequenceElement;
  final List<FhirPositiveInt> subdetailSequence;
  final List<PrimitiveElement> subdetailSequenceElement;
  final List<Reference> provider;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final List<CodeableConcept> programCode;
  final String servicedDate;
  final PrimitiveElement servicedDateElement;
  final Period servicedPeriod;
  final CodeableConcept locationCodeableConcept;
  final Address locationAddress;
  final Reference locationReference;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final Money net;
  final CodeableConcept bodySite;
  final List<CodeableConcept> subSite;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseDetail1> detail;
  const ClaimResponseAddItem({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.itemSequence,
    required this.itemSequenceElement,
    required this.detailSequence,
    required this.detailSequenceElement,
    required this.subdetailSequence,
    required this.subdetailSequenceElement,
    required this.provider,
    required this.productOrService,
    required this.modifier,
    required this.programCode,
    required this.servicedDate,
    required this.servicedDateElement,
    required this.servicedPeriod,
    required this.locationCodeableConcept,
    required this.locationAddress,
    required this.locationReference,
    required this.quantity,
    required this.unitPrice,
    required this.factor,
    required this.factorElement,
    required this.net,
    required this.bodySite,
    required this.subSite,
    required this.noteNumber,
    required this.noteNumberElement,
    required this.adjudication,
    required this.detail,
  });
}

@Data()
@JsonCodable()
class ClaimResponseDetail1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final Money net;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseSubDetail1> subDetail;
  const ClaimResponseDetail1({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.productOrService,
    required this.modifier,
    required this.quantity,
    required this.unitPrice,
    required this.factor,
    required this.factorElement,
    required this.net,
    required this.noteNumber,
    required this.noteNumberElement,
    required this.adjudication,
    required this.subDetail,
  });
}

@Data()
@JsonCodable()
class ClaimResponseSubDetail1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final Money net;
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ClaimResponseAdjudication> adjudication;
  const ClaimResponseSubDetail1({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.productOrService,
    required this.modifier,
    required this.quantity,
    required this.unitPrice,
    required this.factor,
    required this.factorElement,
    required this.net,
    required this.noteNumber,
    required this.noteNumberElement,
    required this.adjudication,
  });
}

@Data()
@JsonCodable()
class ClaimResponseTotal {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final Money amount;
  const ClaimResponseTotal({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.category,
    required this.amount,
  });
}

@Data()
@JsonCodable()
class ClaimResponsePayment {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Money adjustment;
  final CodeableConcept adjustmentReason;
  final FhirDate date;
  final PrimitiveElement dateElement;
  final Money amount;
  final Identifier identifier;
  const ClaimResponsePayment({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.adjustment,
    required this.adjustmentReason,
    required this.date,
    required this.dateElement,
    required this.amount,
    required this.identifier,
  });
}

@Data()
@JsonCodable()
class ClaimResponseProcessNote {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt number;
  final PrimitiveElement numberElement;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final String text;
  final PrimitiveElement textElement;
  final CodeableConcept language;
  const ClaimResponseProcessNote({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.number,
    required this.numberElement,
    required this.type,
    required this.typeElement,
    required this.text,
    required this.textElement,
    required this.language,
  });
}

@Data()
@JsonCodable()
class ClaimResponseInsurance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final FhirBoolean focal;
  final PrimitiveElement focalElement;
  final Reference coverage;
  final String businessArrangement;
  final PrimitiveElement businessArrangementElement;
  final Reference claimResponse;
  const ClaimResponseInsurance({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.sequence,
    required this.sequenceElement,
    required this.focal,
    required this.focalElement,
    required this.coverage,
    required this.businessArrangement,
    required this.businessArrangementElement,
    required this.claimResponse,
  });
}

@Data()
@JsonCodable()
class ClaimResponseError {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt itemSequence;
  final PrimitiveElement itemSequenceElement;
  final FhirPositiveInt detailSequence;
  final PrimitiveElement detailSequenceElement;
  final FhirPositiveInt subDetailSequence;
  final PrimitiveElement subDetailSequenceElement;
  final CodeableConcept code;
  const ClaimResponseError({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.itemSequence,
    required this.itemSequenceElement,
    required this.detailSequence,
    required this.detailSequenceElement,
    required this.subDetailSequence,
    required this.subDetailSequenceElement,
    required this.code,
  });
}


