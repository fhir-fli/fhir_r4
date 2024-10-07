import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefit extends DomainResource {
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
    this.addItem,
    this.adjudication,
    this.total,
    this.payment,
    this.formCode,
    this.form,
    this.processNote,
    this.benefitPeriod,
    this.benefitBalance,
  }) : super(resourceType: R4ResourceType.ExplanationOfBenefit);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  final List<ExplanationOfBenefitRelated>? related;
  final Reference? prescription;
  final Reference? originalPrescription;
  final ExplanationOfBenefitPayee? payee;
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
  final List<ExplanationOfBenefitCareTeam>? careTeam;
  final List<ExplanationOfBenefitSupportingInfo>? supportingInfo;
  final List<ExplanationOfBenefitDiagnosis>? diagnosis;
  final List<ExplanationOfBenefitProcedure>? procedure;
  final FhirPositiveInt? precedence;
  final Element? precedenceElement;
  final List<ExplanationOfBenefitInsurance> insurance;
  final ExplanationOfBenefitAccident? accident;
  final List<ExplanationOfBenefitItem>? item;
  final List<ExplanationOfBenefitAddItem>? addItem;
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  final List<ExplanationOfBenefitTotal>? total;
  final ExplanationOfBenefitPayment? payment;
  final CodeableConcept? formCode;
  final Attachment? form;
  final List<ExplanationOfBenefitProcessNote>? processNote;
  final Period? benefitPeriod;
  final List<ExplanationOfBenefitBenefitBalance>? benefitBalance;
  @override
  ExplanationOfBenefit clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitRelated extends BackboneElement {
  ExplanationOfBenefitRelated({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Reference? claim;
  final CodeableConcept? relationship;
  final Identifier? reference;
  @override
  ExplanationOfBenefitRelated clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitPayee extends BackboneElement {
  ExplanationOfBenefitPayee({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.party,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? type;
  final Reference? party;
  @override
  ExplanationOfBenefitPayee clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitCareTeam extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirPositiveInt sequence;
  final Element? sequenceElement;
  final Reference provider;
  final FhirBoolean? responsible;
  final Element? responsibleElement;
  final CodeableConcept? role;
  final CodeableConcept? qualification;
  @override
  ExplanationOfBenefitCareTeam clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitSupportingInfo extends BackboneElement {
  ExplanationOfBenefitSupportingInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirPositiveInt sequence;
  final Element? sequenceElement;
  final CodeableConcept category;
  final CodeableConcept? code;
  final FhirDate? timingDate;
  final Element? timingDateElement;
  final Period? timingPeriod;
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;
  final FhirString? valueString;
  final Element? valueStringElement;
  final Quantity? valueQuantity;
  final Attachment? valueAttachment;
  final Reference? valueReference;
  final Coding? reason;
  @override
  ExplanationOfBenefitSupportingInfo clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitDiagnosis extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirPositiveInt sequence;
  final Element? sequenceElement;
  final CodeableConcept diagnosisCodeableConcept;
  final Reference diagnosisReference;
  final List<CodeableConcept>? type;
  final CodeableConcept? onAdmission;
  final CodeableConcept? packageCode;
  @override
  ExplanationOfBenefitDiagnosis clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitProcedure extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirPositiveInt sequence;
  final Element? sequenceElement;
  final List<CodeableConcept>? type;
  final FhirDateTime? date;
  final Element? dateElement;
  final CodeableConcept procedureCodeableConcept;
  final Reference procedureReference;
  final List<Reference>? udi;
  @override
  ExplanationOfBenefitProcedure clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitInsurance extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirBoolean focal;
  final Element? focalElement;
  final Reference coverage;
  final List<FhirString>? preAuthRef;
  final List<Element>? preAuthRefElement;
  @override
  ExplanationOfBenefitInsurance clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitAccident extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirDate? date;
  final Element? dateElement;
  final CodeableConcept? type;
  final Address? locationAddress;
  final Reference? locationReference;
  @override
  ExplanationOfBenefitAccident clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitItem extends BackboneElement {
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
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
    this.detail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  final FhirDate? servicedDate;
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
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  final List<ExplanationOfBenefitDetail>? detail;
  @override
  ExplanationOfBenefitItem clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitAdjudication extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept category;
  final CodeableConcept? reason;
  final Money? amount;
  final FhirDecimal? value;
  final Element? valueElement;
  @override
  ExplanationOfBenefitAdjudication clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitDetail extends BackboneElement {
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
    this.subDetail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  final List<ExplanationOfBenefitSubDetail>? subDetail;
  @override
  ExplanationOfBenefitDetail clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitSubDetail extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  @override
  ExplanationOfBenefitSubDetail clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitAddItem extends BackboneElement {
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
    this.bodySite,
    this.subSite,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
    this.detail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  final FhirDate? servicedDate;
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
  final CodeableConcept? bodySite;
  final List<CodeableConcept>? subSite;
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  final List<ExplanationOfBenefitDetail>? detail;
  @override
  ExplanationOfBenefitAddItem clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitDetail1 extends BackboneElement {
  ExplanationOfBenefitDetail1({
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
    this.subDetail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept productOrService;
  final List<CodeableConcept>? modifier;
  final Quantity? quantity;
  final Money? unitPrice;
  final FhirDecimal? factor;
  final Element? factorElement;
  final Money? net;
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  final List<ExplanationOfBenefitSubDetail>? subDetail;
  @override
  ExplanationOfBenefitDetail1 clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitSubDetail1 extends BackboneElement {
  ExplanationOfBenefitSubDetail1({
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept productOrService;
  final List<CodeableConcept>? modifier;
  final Quantity? quantity;
  final Money? unitPrice;
  final FhirDecimal? factor;
  final Element? factorElement;
  final Money? net;
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  @override
  ExplanationOfBenefitSubDetail1 clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitTotal extends BackboneElement {
  ExplanationOfBenefitTotal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    required this.amount,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept category;
  final Money amount;
  @override
  ExplanationOfBenefitTotal clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitPayment extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? type;
  final Money? adjustment;
  final CodeableConcept? adjustmentReason;
  final FhirDate? date;
  final Element? dateElement;
  final Money? amount;
  final Identifier? identifier;
  @override
  ExplanationOfBenefitPayment clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitProcessNote extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirPositiveInt? number;
  final Element? numberElement;
  final FhirCode? type;
  final Element? typeElement;
  final FhirString? text;
  final Element? textElement;
  final CodeableConcept? language;
  @override
  ExplanationOfBenefitProcessNote clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitBenefitBalance extends BackboneElement {
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
    this.financial,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  final List<ExplanationOfBenefitFinancial>? financial;
  @override
  ExplanationOfBenefitBenefitBalance clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ExplanationOfBenefitFinancial extends BackboneElement {
  ExplanationOfBenefitFinancial({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.allowedUnsignedInt,
    this.allowedUnsignedIntElement,
    this.allowedString,
    this.allowedStringElement,
    this.allowedMoney,
    this.usedUnsignedInt,
    this.usedUnsignedIntElement,
    this.usedMoney,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept type;
  final FhirUnsignedInt? allowedUnsignedInt;
  final Element? allowedUnsignedIntElement;
  final FhirString? allowedString;
  final Element? allowedStringElement;
  final Money? allowedMoney;
  final FhirUnsignedInt? usedUnsignedInt;
  final Element? usedUnsignedIntElement;
  final Money? usedMoney;
  @override
  ExplanationOfBenefitFinancial clone() => throw UnimplementedError();
}
