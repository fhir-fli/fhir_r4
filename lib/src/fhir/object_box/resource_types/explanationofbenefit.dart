import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ExplanationOfBenefit extends Resource {
  ExplanationOfBenefit({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String status;
  ToOne<Element>? statusElement = ToOne<Element>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? subType = ToOne<CodeableConcept>();
  String use;
  ToOne<Element>? useElement = ToOne<Element>();
  ToOne<Reference> patient = ToOne<Reference>();
  ToOne<Period>? billablePeriod = ToOne<Period>();
  String created;
  ToOne<Element>? createdElement = ToOne<Element>();
  ToOne<Reference>? enterer = ToOne<Reference>();
  ToOne<Reference> insurer = ToOne<Reference>();
  ToOne<Reference> provider = ToOne<Reference>();
  ToOne<CodeableConcept>? priority = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? fundsReserveRequested = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? fundsReserve = ToOne<CodeableConcept>();
  ToMany<ExplanationOfBenefitRelated>? related =
      ToMany<ExplanationOfBenefitRelated>();
  ToOne<Reference>? prescription = ToOne<Reference>();
  ToOne<Reference>? originalPrescription = ToOne<Reference>();
  ToOne<ExplanationOfBenefitPayee>? payee = ToOne<ExplanationOfBenefitPayee>();
  ToOne<Reference>? referral = ToOne<Reference>();
  ToOne<Reference>? facility = ToOne<Reference>();
  ToOne<Reference>? claim = ToOne<Reference>();
  ToOne<Reference>? claimResponse = ToOne<Reference>();
  String outcome;
  ToOne<Element>? outcomeElement = ToOne<Element>();
  String? disposition;
  ToOne<Element>? dispositionElement = ToOne<Element>();
  List<String>? preAuthRef;
  ToMany<Element>? preAuthRefElement = ToMany<Element>();
  ToMany<Period>? preAuthRefPeriod = ToMany<Period>();
  ToMany<ExplanationOfBenefitCareTeam>? careTeam =
      ToMany<ExplanationOfBenefitCareTeam>();
  ToMany<ExplanationOfBenefitSupportingInfo>? supportingInfo =
      ToMany<ExplanationOfBenefitSupportingInfo>();
  ToMany<ExplanationOfBenefitDiagnosis>? diagnosis =
      ToMany<ExplanationOfBenefitDiagnosis>();
  ToMany<ExplanationOfBenefitProcedure>? procedure =
      ToMany<ExplanationOfBenefitProcedure>();
  int? precedence;
  ToOne<Element>? precedenceElement = ToOne<Element>();
  ToMany<ExplanationOfBenefitInsurance> insurance =
      ToMany<ExplanationOfBenefitInsurance>();
  ToOne<ExplanationOfBenefitAccident>? accident =
      ToOne<ExplanationOfBenefitAccident>();
  ToMany<ExplanationOfBenefitItem>? item = ToMany<ExplanationOfBenefitItem>();
  ToMany<ExplanationOfBenefitAddItem>? addItem =
      ToMany<ExplanationOfBenefitAddItem>();
  ToMany<ExplanationOfBenefitAdjudication>? adjudication =
      ToMany<ExplanationOfBenefitAdjudication>();
  ToMany<ExplanationOfBenefitTotal>? total =
      ToMany<ExplanationOfBenefitTotal>();
  ToOne<ExplanationOfBenefitPayment>? payment =
      ToOne<ExplanationOfBenefitPayment>();
  ToOne<CodeableConcept>? formCode = ToOne<CodeableConcept>();
  ToOne<Attachment>? form = ToOne<Attachment>();
  ToMany<ExplanationOfBenefitProcessNote>? processNote =
      ToMany<ExplanationOfBenefitProcessNote>();
  ToOne<Period>? benefitPeriod = ToOne<Period>();
  ToMany<ExplanationOfBenefitBenefitBalance>? benefitBalance =
      ToMany<ExplanationOfBenefitBenefitBalance>();
}

@Entity()
class ExplanationOfBenefitRelated {
  ExplanationOfBenefitRelated({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference>? claim = ToOne<Reference>();
  ToOne<CodeableConcept>? relationship = ToOne<CodeableConcept>();
  ToOne<Identifier>? reference = ToOne<Identifier>();
}

@Entity()
class ExplanationOfBenefitPayee {
  ExplanationOfBenefitPayee({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.party,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Reference>? party = ToOne<Reference>();
}

@Entity()
class ExplanationOfBenefitCareTeam {
  ExplanationOfBenefitCareTeam({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    required this.provider,
    this.responsible,
    this.responsibleElement,
    this.role,
    this.qualification,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  ToOne<Element>? sequenceElement = ToOne<Element>();
  ToOne<Reference> provider = ToOne<Reference>();
  bool? responsible;
  ToOne<Element>? responsibleElement = ToOne<Element>();
  ToOne<CodeableConcept>? role = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? qualification = ToOne<CodeableConcept>();
}

@Entity()
class ExplanationOfBenefitSupportingInfo {
  ExplanationOfBenefitSupportingInfo({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  ToOne<Element>? sequenceElement = ToOne<Element>();
  ToOne<CodeableConcept> category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? timingDate;
  ToOne<Element>? timingDateElement = ToOne<Element>();
  ToOne<Period>? timingPeriod = ToOne<Period>();
  bool? valueBoolean;
  ToOne<Element>? valueBooleanElement = ToOne<Element>();
  String? valueString;
  ToOne<Element>? valueStringElement = ToOne<Element>();
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  ToOne<Attachment>? valueAttachment = ToOne<Attachment>();
  ToOne<Reference>? valueReference = ToOne<Reference>();
  ToOne<Coding>? reason = ToOne<Coding>();
}

@Entity()
class ExplanationOfBenefitDiagnosis {
  ExplanationOfBenefitDiagnosis({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
    this.type,
    this.onAdmission,
    this.packageCode,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  ToOne<Element>? sequenceElement = ToOne<Element>();
  ToOne<CodeableConcept>? diagnosisCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? diagnosisReference = ToOne<Reference>();
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? onAdmission = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? packageCode = ToOne<CodeableConcept>();
}

@Entity()
class ExplanationOfBenefitProcedure {
  ExplanationOfBenefitProcedure({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    this.type,
    this.date,
    this.dateElement,
    this.procedureCodeableConcept,
    this.procedureReference,
    this.udi,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  ToOne<Element>? sequenceElement = ToOne<Element>();
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  String? date;
  ToOne<Element>? dateElement = ToOne<Element>();
  ToOne<CodeableConcept>? procedureCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? procedureReference = ToOne<Reference>();
  ToMany<Reference>? udi = ToMany<Reference>();
}

@Entity()
class ExplanationOfBenefitInsurance {
  ExplanationOfBenefitInsurance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.focal,
    this.focalElement,
    required this.coverage,
    this.preAuthRef,
    this.preAuthRefElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool focal;
  ToOne<Element>? focalElement = ToOne<Element>();
  ToOne<Reference> coverage = ToOne<Reference>();
  List<String>? preAuthRef;
  ToMany<Element>? preAuthRefElement = ToMany<Element>();
}

@Entity()
class ExplanationOfBenefitAccident {
  ExplanationOfBenefitAccident({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.date,
    this.dateElement,
    this.type,
    this.locationAddress,
    this.locationReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? date;
  ToOne<Element>? dateElement = ToOne<Element>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Address>? locationAddress = ToOne<Address>();
  ToOne<Reference>? locationReference = ToOne<Reference>();
}

@Entity()
class ExplanationOfBenefitItem {
  ExplanationOfBenefitItem({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  ToOne<Element>? sequenceElement = ToOne<Element>();
  List<int>? careTeamSequence;
  ToMany<Element>? careTeamSequenceElement = ToMany<Element>();
  List<int>? diagnosisSequence;
  ToMany<Element>? diagnosisSequenceElement = ToMany<Element>();
  List<int>? procedureSequence;
  ToMany<Element>? procedureSequenceElement = ToMany<Element>();
  List<int>? informationSequence;
  ToMany<Element>? informationSequenceElement = ToMany<Element>();
  ToOne<CodeableConcept>? revenue = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept> productOrService = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? modifier = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? programCode = ToMany<CodeableConcept>();
  String? servicedDate;
  ToOne<Element>? servicedDateElement = ToOne<Element>();
  ToOne<Period>? servicedPeriod = ToOne<Period>();
  ToOne<CodeableConcept>? locationCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Address>? locationAddress = ToOne<Address>();
  ToOne<Reference>? locationReference = ToOne<Reference>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Money>? unitPrice = ToOne<Money>();
  double? factor;
  ToOne<Element>? factorElement = ToOne<Element>();
  ToOne<Money>? net = ToOne<Money>();
  ToMany<Reference>? udi = ToMany<Reference>();
  ToOne<CodeableConcept>? bodySite = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? subSite = ToMany<CodeableConcept>();
  ToMany<Reference>? encounter = ToMany<Reference>();
  List<int>? noteNumber;
  ToMany<Element>? noteNumberElement = ToMany<Element>();
  ToMany<ExplanationOfBenefitAdjudication>? adjudication =
      ToMany<ExplanationOfBenefitAdjudication>();
  ToMany<ExplanationOfBenefitDetail>? detail =
      ToMany<ExplanationOfBenefitDetail>();
}

@Entity()
class ExplanationOfBenefitAdjudication {
  ExplanationOfBenefitAdjudication({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.category,
    this.reason,
    this.amount,
    this.value,
    this.valueElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? reason = ToOne<CodeableConcept>();
  ToOne<Money>? amount = ToOne<Money>();
  double? value;
  ToOne<Element>? valueElement = ToOne<Element>();
}

@Entity()
class ExplanationOfBenefitDetail {
  ExplanationOfBenefitDetail({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  ToOne<Element>? sequenceElement = ToOne<Element>();
  ToOne<CodeableConcept>? revenue = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept> productOrService = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? modifier = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? programCode = ToMany<CodeableConcept>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Money>? unitPrice = ToOne<Money>();
  double? factor;
  ToOne<Element>? factorElement = ToOne<Element>();
  ToOne<Money>? net = ToOne<Money>();
  ToMany<Reference>? udi = ToMany<Reference>();
  List<int>? noteNumber;
  ToMany<Element>? noteNumberElement = ToMany<Element>();
  ToMany<ExplanationOfBenefitAdjudication>? adjudication =
      ToMany<ExplanationOfBenefitAdjudication>();
  ToMany<ExplanationOfBenefitSubDetail>? subDetail =
      ToMany<ExplanationOfBenefitSubDetail>();
}

@Entity()
class ExplanationOfBenefitSubDetail {
  ExplanationOfBenefitSubDetail({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  ToOne<Element>? sequenceElement = ToOne<Element>();
  ToOne<CodeableConcept>? revenue = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept> productOrService = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? modifier = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? programCode = ToMany<CodeableConcept>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Money>? unitPrice = ToOne<Money>();
  double? factor;
  ToOne<Element>? factorElement = ToOne<Element>();
  ToOne<Money>? net = ToOne<Money>();
  ToMany<Reference>? udi = ToMany<Reference>();
  List<int>? noteNumber;
  ToMany<Element>? noteNumberElement = ToMany<Element>();
  ToMany<ExplanationOfBenefitAdjudication>? adjudication =
      ToMany<ExplanationOfBenefitAdjudication>();
}

@Entity()
class ExplanationOfBenefitAddItem {
  ExplanationOfBenefitAddItem({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  List<int>? itemSequence;
  ToMany<Element>? itemSequenceElement = ToMany<Element>();
  List<int>? detailSequence;
  ToMany<Element>? detailSequenceElement = ToMany<Element>();
  List<int>? subDetailSequence;
  ToMany<Element>? subDetailSequenceElement = ToMany<Element>();
  ToMany<Reference>? provider = ToMany<Reference>();
  ToOne<CodeableConcept> productOrService = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? modifier = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? programCode = ToMany<CodeableConcept>();
  String? servicedDate;
  ToOne<Element>? servicedDateElement = ToOne<Element>();
  ToOne<Period>? servicedPeriod = ToOne<Period>();
  ToOne<CodeableConcept>? locationCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Address>? locationAddress = ToOne<Address>();
  ToOne<Reference>? locationReference = ToOne<Reference>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Money>? unitPrice = ToOne<Money>();
  double? factor;
  ToOne<Element>? factorElement = ToOne<Element>();
  ToOne<Money>? net = ToOne<Money>();
  ToOne<CodeableConcept>? bodySite = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? subSite = ToMany<CodeableConcept>();
  List<int>? noteNumber;
  ToMany<Element>? noteNumberElement = ToMany<Element>();
  ToMany<ExplanationOfBenefitAdjudication>? adjudication =
      ToMany<ExplanationOfBenefitAdjudication>();
  ToMany<ExplanationOfBenefitDetail>? detail =
      ToMany<ExplanationOfBenefitDetail>();
}

@Entity()
class ExplanationOfBenefitDetail1 {
  ExplanationOfBenefitDetail1({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> productOrService = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? modifier = ToMany<CodeableConcept>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Money>? unitPrice = ToOne<Money>();
  double? factor;
  ToOne<Element>? factorElement = ToOne<Element>();
  ToOne<Money>? net = ToOne<Money>();
  List<int>? noteNumber;
  ToMany<Element>? noteNumberElement = ToMany<Element>();
  ToMany<ExplanationOfBenefitAdjudication>? adjudication =
      ToMany<ExplanationOfBenefitAdjudication>();
  ToMany<ExplanationOfBenefitSubDetail>? subDetail =
      ToMany<ExplanationOfBenefitSubDetail>();
}

@Entity()
class ExplanationOfBenefitSubDetail1 {
  ExplanationOfBenefitSubDetail1({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> productOrService = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? modifier = ToMany<CodeableConcept>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Money>? unitPrice = ToOne<Money>();
  double? factor;
  ToOne<Element>? factorElement = ToOne<Element>();
  ToOne<Money>? net = ToOne<Money>();
  List<int>? noteNumber;
  ToMany<Element>? noteNumberElement = ToMany<Element>();
  ToMany<ExplanationOfBenefitAdjudication>? adjudication =
      ToMany<ExplanationOfBenefitAdjudication>();
}

@Entity()
class ExplanationOfBenefitTotal {
  ExplanationOfBenefitTotal({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.category,
    required this.amount,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> category = ToOne<CodeableConcept>();
  ToOne<Money> amount = ToOne<Money>();
}

@Entity()
class ExplanationOfBenefitPayment {
  ExplanationOfBenefitPayment({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    this.dateElement,
    this.amount,
    this.identifier,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Money>? adjustment = ToOne<Money>();
  ToOne<CodeableConcept>? adjustmentReason = ToOne<CodeableConcept>();
  String? date;
  ToOne<Element>? dateElement = ToOne<Element>();
  ToOne<Money>? amount = ToOne<Money>();
  ToOne<Identifier>? identifier = ToOne<Identifier>();
}

@Entity()
class ExplanationOfBenefitProcessNote {
  ExplanationOfBenefitProcessNote({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.number,
    this.numberElement,
    this.type,
    this.typeElement,
    this.text,
    this.textElement,
    this.language,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? number;
  ToOne<Element>? numberElement = ToOne<Element>();
  String? type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String? text;
  ToOne<Element>? textElement = ToOne<Element>();
  ToOne<CodeableConcept>? language = ToOne<CodeableConcept>();
}

@Entity()
class ExplanationOfBenefitBenefitBalance {
  ExplanationOfBenefitBenefitBalance({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> category = ToOne<CodeableConcept>();
  bool? excluded;
  ToOne<Element>? excludedElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToOne<CodeableConcept>? network = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? unit = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? term = ToOne<CodeableConcept>();
  ToMany<ExplanationOfBenefitFinancial>? financial =
      ToMany<ExplanationOfBenefitFinancial>();
}

@Entity()
class ExplanationOfBenefitFinancial {
  ExplanationOfBenefitFinancial({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  int? allowedUnsignedInt;
  ToOne<Element>? allowedUnsignedIntElement = ToOne<Element>();
  String? allowedString;
  ToOne<Element>? allowedStringElement = ToOne<Element>();
  ToOne<Money>? allowedMoney = ToOne<Money>();
  int? usedUnsignedInt;
  ToOne<Element>? usedUnsignedIntElement = ToOne<Element>();
  ToOne<Money>? usedMoney = ToOne<Money>();
}
