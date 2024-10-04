import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ExplanationOfBenefit {
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
  final CodeableConcept fundsReserveRequested;
  final CodeableConcept fundsReserve;
  final List<ExplanationOfBenefitRelated> related;
  final Reference prescription;
  final Reference originalPrescription;
  final ExplanationOfBenefitPayee payee;
  final Reference referral;
  final Reference facility;
  final Reference claim;
  final Reference claimResponse;
  final FhirCode outcome;
  final PrimitiveElement outcomeElement;
  final String disposition;
  final PrimitiveElement dispositionElement;
  final List<String> preAuthRef;
  final List<PrimitiveElement> preAuthRefElement;
  final List<Period> preAuthRefPeriod;
  final List<ExplanationOfBenefitCareTeam> careTeam;
  final List<ExplanationOfBenefitSupportingInfo> supportingInfo;
  final List<ExplanationOfBenefitDiagnosis> diagnosis;
  final List<ExplanationOfBenefitProcedure> procedure;
  final FhirPositiveInt precedence;
  final PrimitiveElement precedenceElement;
  final List<ExplanationOfBenefitInsurance> insurance;
  final ExplanationOfBenefitAccident accident;
  final List<ExplanationOfBenefitItem> item;
  final List<ExplanationOfBenefitAddItem> addItem;
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitTotal> total;
  final ExplanationOfBenefitPayment payment;
  final CodeableConcept formCode;
  final Attachment form;
  final List<ExplanationOfBenefitProcessNote> processNote;
  final Period benefitPeriod;
  final List<ExplanationOfBenefitBenefitBalance> benefitBalance;
  const ExplanationOfBenefit({
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
    required this.fundsReserveRequested,
    required this.fundsReserve,
    required this.related,
    required this.prescription,
    required this.originalPrescription,
    required this.payee,
    required this.referral,
    required this.facility,
    required this.claim,
    required this.claimResponse,
    required this.outcome,
    required this.outcomeElement,
    required this.disposition,
    required this.dispositionElement,
    required this.preAuthRef,
    required this.preAuthRefElement,
    required this.preAuthRefPeriod,
    required this.careTeam,
    required this.supportingInfo,
    required this.diagnosis,
    required this.procedure,
    required this.precedence,
    required this.precedenceElement,
    required this.insurance,
    required this.accident,
    required this.item,
    required this.addItem,
    required this.adjudication,
    required this.total,
    required this.payment,
    required this.formCode,
    required this.form,
    required this.processNote,
    required this.benefitPeriod,
    required this.benefitBalance,
  });
}

@Data()
@JsonCodable()
class ExplanationOfBenefitRelated {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference claim;
  final CodeableConcept relationship;
  final Identifier reference;
  const ExplanationOfBenefitRelated({
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
class ExplanationOfBenefitPayee {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Reference party;
  const ExplanationOfBenefitPayee({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.party,
  });
}

@Data()
@JsonCodable()
class ExplanationOfBenefitCareTeam {
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
  const ExplanationOfBenefitCareTeam({
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
class ExplanationOfBenefitSupportingInfo {
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
  final Coding reason;
  const ExplanationOfBenefitSupportingInfo({
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
class ExplanationOfBenefitDiagnosis {
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
  const ExplanationOfBenefitDiagnosis({
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
class ExplanationOfBenefitProcedure {
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
  const ExplanationOfBenefitProcedure({
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
class ExplanationOfBenefitInsurance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean focal;
  final PrimitiveElement focalElement;
  final Reference coverage;
  final List<String> preAuthRef;
  final List<PrimitiveElement> preAuthRefElement;
  const ExplanationOfBenefitInsurance({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.focal,
    required this.focalElement,
    required this.coverage,
    required this.preAuthRef,
    required this.preAuthRefElement,
  });
}

@Data()
@JsonCodable()
class ExplanationOfBenefitAccident {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirDate date;
  final PrimitiveElement dateElement;
  final CodeableConcept type;
  final Address locationAddress;
  final Reference locationReference;
  const ExplanationOfBenefitAccident({
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
class ExplanationOfBenefitItem {
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
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitDetail> detail;
  const ExplanationOfBenefitItem({
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
    required this.noteNumber,
    required this.noteNumberElement,
    required this.adjudication,
    required this.detail,
  });
}

@Data()
@JsonCodable()
class ExplanationOfBenefitAdjudication {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final CodeableConcept reason;
  final Money amount;
  final FhirDecimal value;
  final PrimitiveElement valueElement;
  const ExplanationOfBenefitAdjudication({
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
class ExplanationOfBenefitDetail {
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
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitSubDetail> subDetail;
  const ExplanationOfBenefitDetail({
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
    required this.noteNumber,
    required this.noteNumberElement,
    required this.adjudication,
    required this.subDetail,
  });
}

@Data()
@JsonCodable()
class ExplanationOfBenefitSubDetail {
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
  final List<FhirPositiveInt> noteNumber;
  final List<PrimitiveElement> noteNumberElement;
  final List<ExplanationOfBenefitAdjudication> adjudication;
  const ExplanationOfBenefitSubDetail({
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
    required this.noteNumber,
    required this.noteNumberElement,
    required this.adjudication,
  });
}

@Data()
@JsonCodable()
class ExplanationOfBenefitAddItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<FhirPositiveInt> itemSequence;
  final List<PrimitiveElement> itemSequenceElement;
  final List<FhirPositiveInt> detailSequence;
  final List<PrimitiveElement> detailSequenceElement;
  final List<FhirPositiveInt> subDetailSequence;
  final List<PrimitiveElement> subDetailSequenceElement;
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
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitDetail1> detail;
  const ExplanationOfBenefitAddItem({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.itemSequence,
    required this.itemSequenceElement,
    required this.detailSequence,
    required this.detailSequenceElement,
    required this.subDetailSequence,
    required this.subDetailSequenceElement,
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
class ExplanationOfBenefitDetail1 {
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
  final List<ExplanationOfBenefitAdjudication> adjudication;
  final List<ExplanationOfBenefitSubDetail1> subDetail;
  const ExplanationOfBenefitDetail1({
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
class ExplanationOfBenefitSubDetail1 {
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
  final List<ExplanationOfBenefitAdjudication> adjudication;
  const ExplanationOfBenefitSubDetail1({
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
class ExplanationOfBenefitTotal {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final Money amount;
  const ExplanationOfBenefitTotal({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.category,
    required this.amount,
  });
}

@Data()
@JsonCodable()
class ExplanationOfBenefitPayment {
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
  const ExplanationOfBenefitPayment({
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
class ExplanationOfBenefitProcessNote {
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
  const ExplanationOfBenefitProcessNote({
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
class ExplanationOfBenefitBenefitBalance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final FhirBoolean excluded;
  final PrimitiveElement excludedElement;
  final String name;
  final PrimitiveElement nameElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final CodeableConcept network;
  final CodeableConcept unit;
  final CodeableConcept term;
  final List<ExplanationOfBenefitFinancial> financial;
  const ExplanationOfBenefitBenefitBalance({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.category,
    required this.excluded,
    required this.excludedElement,
    required this.name,
    required this.nameElement,
    required this.description,
    required this.descriptionElement,
    required this.network,
    required this.unit,
    required this.term,
    required this.financial,
  });
}

@Data()
@JsonCodable()
class ExplanationOfBenefitFinancial {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final double allowedUnsignedInt;
  final PrimitiveElement allowedUnsignedIntElement;
  final String allowedString;
  final PrimitiveElement allowedStringElement;
  final Money allowedMoney;
  final double usedUnsignedInt;
  final PrimitiveElement usedUnsignedIntElement;
  final Money usedMoney;
  const ExplanationOfBenefitFinancial({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.allowedUnsignedInt,
    required this.allowedUnsignedIntElement,
    required this.allowedString,
    required this.allowedStringElement,
    required this.allowedMoney,
    required this.usedUnsignedInt,
    required this.usedUnsignedIntElement,
    required this.usedMoney,
  });
}


