import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ExplanationOfBenefit extends DomainResource {
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
  final Reference insurer;
  final Reference provider;
  final CodeableConcept? priority;
  final CodeableConcept? fundsReserveRequested;
  final CodeableConcept? fundsReserve;
  final List<BackboneElement>? related;
  final Reference? prescription;
  final Reference? originalPrescription;
  final BackboneElement? payee;
  final Reference? referral;
  final Reference? facility;
  final Reference? claim;
  final Reference? claimResponse;
  final FhirCode outcome;
  final Element? outcomeElement;
  final FhirString? disposition;
  final Element? dispositionElement;
  final List<FhirString>? preAuthRef;
  final List<Element>? preAuthRefElement;
  final List<Period>? preAuthRefPeriod;
  final List<BackboneElement>? careTeam;
  final List<BackboneElement>? supportingInfo;
  final List<BackboneElement>? diagnosis;
  final List<BackboneElement>? procedure;
  final FhirPositiveInt? precedence;
  final Element? precedenceElement;
  final List<BackboneElement> insurance;
  final BackboneElement? accident;
  final List<BackboneElement>? item;
  final List<BackboneElement>? adjudication;
  final List<BackboneElement>? detail;
  final List<BackboneElement>? subDetail;
  final List<BackboneElement>? addItem;
  final List<BackboneElement>? detail;
  final List<BackboneElement>? subDetail;
  final List<dynamic>? adjudication;
  final List<BackboneElement>? total;
  final BackboneElement? payment;
  final CodeableConcept? formCode;
  final Attachment? form;
  final List<BackboneElement>? processNote;
  final Period? benefitPeriod;
  final List<BackboneElement>? benefitBalance;
  final List<BackboneElement>? financial;

  ExplanationOfBenefit({
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
    required this.insurer,
    required this.provider,
    this.priority,
    this.fundsReserveRequested,
    this.fundsReserve,
    this.related,
    this.prescription,
    this.originalPrescription,
    this.payee,
    this.referral,
    this.facility,
    this.claim,
    this.claimResponse,
    required this.outcome,
this.outcomeElement,
    this.disposition,
this.dispositionElement,
    this.preAuthRef,
this.preAuthRefElement,
    this.preAuthRefPeriod,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    this.precedence,
this.precedenceElement,
    required this.insurance,
    this.accident,
    this.item,
    this.adjudication,
    this.detail,
    this.subDetail,
    this.addItem,
    this.detail,
    this.subDetail,
    this.adjudication,
    this.total,
    this.payment,
    this.formCode,
    this.form,
    this.processNote,
    this.benefitPeriod,
    this.benefitBalance,
    this.financial,
  }) : super(resourceType: R4ResourceType.ExplanationOfBenefit);

@override
ExplanationOfBenefit clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitRelated extends BackboneElement {
  final Reference? claim;
  final CodeableConcept? relationship;
  final Identifier? reference;

  ExplanationOfBenefitRelated({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
  });

@override
ExplanationOfBenefitRelated clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitPayee extends BackboneElement {
  final CodeableConcept? type;
  final Reference? party;

  ExplanationOfBenefitPayee({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.party,
  });

@override
ExplanationOfBenefitPayee clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitCareTeam extends BackboneElement {
  final FhirPositiveInt sequence;
  final Element? sequenceElement;
  final Reference provider;
  final FhirBoolean? responsible;
  final Element? responsibleElement;
  final CodeableConcept? role;
  final CodeableConcept? qualification;

  ExplanationOfBenefitCareTeam({
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
ExplanationOfBenefitCareTeam clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitSupportingInfo extends BackboneElement {
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
  final Coding? reason;

  ExplanationOfBenefitSupportingInfo({
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
ExplanationOfBenefitSupportingInfo clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitDiagnosis extends BackboneElement {
  final FhirPositiveInt sequence;
  final Element? sequenceElement;
  final CodeableConcept diagnosisCodeableConcept;
  final Reference diagnosisReference;
  final List<CodeableConcept>? type;
  final CodeableConcept? onAdmission;
  final CodeableConcept? packageCode;

  ExplanationOfBenefitDiagnosis({
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
ExplanationOfBenefitDiagnosis clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitProcedure extends BackboneElement {
  final FhirPositiveInt sequence;
  final Element? sequenceElement;
  final List<CodeableConcept>? type;
  final FhirDateTime? date;
  final Element? dateElement;
  final CodeableConcept procedureCodeableConcept;
  final Reference procedureReference;
  final List<Reference>? udi;

  ExplanationOfBenefitProcedure({
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
ExplanationOfBenefitProcedure clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitInsurance extends BackboneElement {
  final FhirBoolean focal;
  final Element? focalElement;
  final Reference coverage;
  final List<FhirString>? preAuthRef;
  final List<Element>? preAuthRefElement;

  ExplanationOfBenefitInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.focal,
this.focalElement,
    required this.coverage,
    this.preAuthRef,
this.preAuthRefElement,
  });

@override
ExplanationOfBenefitInsurance clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitAccident extends BackboneElement {
  final FhirDate? date;
  final Element? dateElement;
  final CodeableConcept? type;
  final Address? locationAddress;
  final Reference? locationReference;

  ExplanationOfBenefitAccident({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.date,
this.dateElement,
    this.type,
    this.locationAddress,
    this.locationReference,
  });

@override
ExplanationOfBenefitAccident clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitItem extends BackboneElement {
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
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;

  ExplanationOfBenefitItem({
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
    this.noteNumber,
this.noteNumberElement,
  });

@override
ExplanationOfBenefitItem clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitAdjudication extends BackboneElement {
  final CodeableConcept category;
  final CodeableConcept? reason;
  final Money? amount;
  final FhirDecimal? value;
  final Element? valueElement;

  ExplanationOfBenefitAdjudication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.reason,
    this.amount,
    this.value,
this.valueElement,
  });

@override
ExplanationOfBenefitAdjudication clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitDetail extends BackboneElement {
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
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<dynamic>? adjudication;

  ExplanationOfBenefitDetail({
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
    this.noteNumber,
this.noteNumberElement,
    this.adjudication,
  });

@override
ExplanationOfBenefitDetail clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitSubDetail extends BackboneElement {
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
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<dynamic>? adjudication;

  ExplanationOfBenefitSubDetail({
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
    this.noteNumber,
this.noteNumberElement,
    this.adjudication,
  });

@override
ExplanationOfBenefitSubDetail clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitAddItem extends BackboneElement {
  final List<FhirPositiveInt>? itemSequence;
  final List<Element>? itemSequenceElement;
  final List<FhirPositiveInt>? detailSequence;
  final List<Element>? detailSequenceElement;
  final List<FhirPositiveInt>? subDetailSequence;
  final List<Element>? subDetailSequenceElement;
  final List<Reference>? provider;
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
  final CodeableConcept? bodySite;
  final List<CodeableConcept>? subSite;
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<dynamic>? adjudication;

  ExplanationOfBenefitAddItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemSequence,
this.itemSequenceElement,
    this.detailSequence,
this.detailSequenceElement,
    this.subDetailSequence,
this.subDetailSequenceElement,
    this.provider,
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
    this.bodySite,
    this.subSite,
    this.noteNumber,
this.noteNumberElement,
    this.adjudication,
  });

@override
ExplanationOfBenefitAddItem clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitDetail extends BackboneElement {
  final CodeableConcept productOrService;
  final List<CodeableConcept>? modifier;
  final Quantity? quantity;
  final Money? unitPrice;
  final FhirDecimal? factor;
  final Element? factorElement;
  final Money? net;
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<dynamic>? adjudication;

  ExplanationOfBenefitDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
this.factorElement,
    this.net,
    this.noteNumber,
this.noteNumberElement,
    this.adjudication,
  });

@override
ExplanationOfBenefitDetail clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitSubDetail extends BackboneElement {
  final CodeableConcept productOrService;
  final List<CodeableConcept>? modifier;
  final Quantity? quantity;
  final Money? unitPrice;
  final FhirDecimal? factor;
  final Element? factorElement;
  final Money? net;
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<dynamic>? adjudication;

  ExplanationOfBenefitSubDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
this.factorElement,
    this.net,
    this.noteNumber,
this.noteNumberElement,
    this.adjudication,
  });

@override
ExplanationOfBenefitSubDetail clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitTotal extends BackboneElement {
  final CodeableConcept category;
  final Money amount;

  ExplanationOfBenefitTotal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    required this.amount,
  });

@override
ExplanationOfBenefitTotal clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitPayment extends BackboneElement {
  final CodeableConcept? type;
  final Money? adjustment;
  final CodeableConcept? adjustmentReason;
  final FhirDate? date;
  final Element? dateElement;
  final Money? amount;
  final Identifier? identifier;

  ExplanationOfBenefitPayment({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
this.dateElement,
    this.amount,
    this.identifier,
  });

@override
ExplanationOfBenefitPayment clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitProcessNote extends BackboneElement {
  final FhirPositiveInt? number;
  final Element? numberElement;
  final FhirCode? type;
  final Element? typeElement;
  final FhirString? text;
  final Element? textElement;
  final CodeableConcept? language;

  ExplanationOfBenefitProcessNote({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.number,
this.numberElement,
    this.type,
this.typeElement,
    this.text,
this.textElement,
    this.language,
  });

@override
ExplanationOfBenefitProcessNote clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitBenefitBalance extends BackboneElement {
  final CodeableConcept category;
  final FhirBoolean? excluded;
  final Element? excludedElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;
  final CodeableConcept? network;
  final CodeableConcept? unit;
  final CodeableConcept? term;

  ExplanationOfBenefitBenefitBalance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.excluded,
this.excludedElement,
    this.name,
this.nameElement,
    this.description,
this.descriptionElement,
    this.network,
    this.unit,
    this.term,
  });

@override
ExplanationOfBenefitBenefitBalance clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ExplanationOfBenefitFinancial extends BackboneElement {
  final CodeableConcept type;
  final FhirUnsignedInt? allowedFhirUnsignedInt;
  final Element? allowedFhirUnsignedIntElement;
  final FhirString? allowedFhirString;
  final Element? allowedFhirStringElement;
  final Money? allowedMoney;
  final FhirUnsignedInt? usedFhirUnsignedInt;
  final Element? usedFhirUnsignedIntElement;
  final Money? usedMoney;

  ExplanationOfBenefitFinancial({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.allowedFhirUnsignedInt,
this.allowedFhirUnsignedIntElement,
    this.allowedFhirString,
this.allowedFhirStringElement,
    this.allowedMoney,
    this.usedFhirUnsignedInt,
this.usedFhirUnsignedIntElement,
    this.usedMoney,
  });

@override
ExplanationOfBenefitFinancial clone() => throw UnimplementedError();
}
