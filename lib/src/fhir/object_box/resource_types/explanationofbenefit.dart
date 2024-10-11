import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ExplanationOfBenefit extends Resource {
  ExplanationOfBenefit({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    required this.type,
    this.subType,
    required this.use,
    required this.patient,
    this.billablePeriod,
    required this.created,
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
    this.disposition,
    this.preAuthRef,
    this.preAuthRefPeriod,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    this.precedence,
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
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String status;
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? subType = ToOne<CodeableConcept>();
  String use;
  ToOne<Reference> patient = ToOne<Reference>();
  ToOne<Period>? billablePeriod = ToOne<Period>();
  String created;
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
  String? disposition;
  List<String>? preAuthRef;
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
    required this.provider,
    this.responsible,
    this.role,
    this.qualification,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  ToOne<Reference> provider = ToOne<Reference>();
  bool? responsible;
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
    required this.category,
    this.code,
    this.timingDate,
    this.timingPeriod,
    this.valueBoolean,
    this.valueString,
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
  ToOne<CodeableConcept> category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? timingDate;
  ToOne<Period>? timingPeriod = ToOne<Period>();
  bool? valueBoolean;
  String? valueString;
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
    this.type,
    this.date,
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
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  String? date;
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
    required this.coverage,
    this.preAuthRef,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool focal;
  ToOne<Reference> coverage = ToOne<Reference>();
  List<String>? preAuthRef;
}

@Entity()
class ExplanationOfBenefitAccident {
  ExplanationOfBenefitAccident({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.date,
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
    this.careTeamSequence,
    this.diagnosisSequence,
    this.procedureSequence,
    this.informationSequence,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.udi,
    this.bodySite,
    this.subSite,
    this.encounter,
    this.noteNumber,
    this.adjudication,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  List<int>? careTeamSequence;
  List<int>? diagnosisSequence;
  List<int>? procedureSequence;
  List<int>? informationSequence;
  ToOne<CodeableConcept>? revenue = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept> productOrService = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? modifier = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? programCode = ToMany<CodeableConcept>();
  String? servicedDate;
  ToOne<Period>? servicedPeriod = ToOne<Period>();
  ToOne<CodeableConcept>? locationCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Address>? locationAddress = ToOne<Address>();
  ToOne<Reference>? locationReference = ToOne<Reference>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Money>? unitPrice = ToOne<Money>();
  double? factor;
  ToOne<Money>? net = ToOne<Money>();
  ToMany<Reference>? udi = ToMany<Reference>();
  ToOne<CodeableConcept>? bodySite = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? subSite = ToMany<CodeableConcept>();
  ToMany<Reference>? encounter = ToMany<Reference>();
  List<int>? noteNumber;
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
}

@Entity()
class ExplanationOfBenefitDetail {
  ExplanationOfBenefitDetail({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.sequence,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.udi,
    this.noteNumber,
    this.adjudication,
    this.subDetail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  ToOne<CodeableConcept>? revenue = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept> productOrService = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? modifier = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? programCode = ToMany<CodeableConcept>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Money>? unitPrice = ToOne<Money>();
  double? factor;
  ToOne<Money>? net = ToOne<Money>();
  ToMany<Reference>? udi = ToMany<Reference>();
  List<int>? noteNumber;
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
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.udi,
    this.noteNumber,
    this.adjudication,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  ToOne<CodeableConcept>? revenue = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept> productOrService = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? modifier = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? programCode = ToMany<CodeableConcept>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Money>? unitPrice = ToOne<Money>();
  double? factor;
  ToOne<Money>? net = ToOne<Money>();
  ToMany<Reference>? udi = ToMany<Reference>();
  List<int>? noteNumber;
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
    this.detailSequence,
    this.subDetailSequence,
    this.provider,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.bodySite,
    this.subSite,
    this.noteNumber,
    this.adjudication,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  List<int>? itemSequence;
  List<int>? detailSequence;
  List<int>? subDetailSequence;
  ToMany<Reference>? provider = ToMany<Reference>();
  ToOne<CodeableConcept> productOrService = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? modifier = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? programCode = ToMany<CodeableConcept>();
  String? servicedDate;
  ToOne<Period>? servicedPeriod = ToOne<Period>();
  ToOne<CodeableConcept>? locationCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Address>? locationAddress = ToOne<Address>();
  ToOne<Reference>? locationReference = ToOne<Reference>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Money>? unitPrice = ToOne<Money>();
  double? factor;
  ToOne<Money>? net = ToOne<Money>();
  ToOne<CodeableConcept>? bodySite = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? subSite = ToMany<CodeableConcept>();
  List<int>? noteNumber;
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
    this.net,
    this.noteNumber,
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
  ToOne<Money>? net = ToOne<Money>();
  List<int>? noteNumber;
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
    this.net,
    this.noteNumber,
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
  ToOne<Money>? net = ToOne<Money>();
  List<int>? noteNumber;
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
    this.type,
    this.text,
    this.language,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? number;
  String? type;
  String? text;
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
    this.name,
    this.description,
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
  String? name;
  String? description;
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
    this.allowedString,
    this.allowedMoney,
    this.usedUnsignedInt,
    this.usedMoney,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  int? allowedUnsignedInt;
  String? allowedString;
  ToOne<Money>? allowedMoney = ToOne<Money>();
  int? usedUnsignedInt;
  ToOne<Money>? usedMoney = ToOne<Money>();
}
