// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxExplanationOfBenefit {
  ObjectBoxExplanationOfBenefit({
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
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? subType = ToOne<ObjectBoxCodeableConcept>();
  String use;
  ToOne<ObjectBoxElement>? useElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod>? billablePeriod = ToOne<ObjectBoxPeriod>();
  String created;
  ToOne<ObjectBoxElement>? createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? enterer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> insurer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> provider = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? priority = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? fundsReserveRequested =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? fundsReserve =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxExplanationOfBenefitRelated>? related =
      ToMany<ObjectBoxExplanationOfBenefitRelated>();
  ToOne<ObjectBoxReference>? prescription = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? originalPrescription = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxExplanationOfBenefitPayee>? payee =
      ToOne<ObjectBoxExplanationOfBenefitPayee>();
  ToOne<ObjectBoxReference>? referral = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? facility = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? claim = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? claimResponse = ToOne<ObjectBoxReference>();
  String outcome;
  ToOne<ObjectBoxElement>? outcomeElement = ToOne<ObjectBoxElement>();
  String? disposition;
  ToOne<ObjectBoxElement>? dispositionElement = ToOne<ObjectBoxElement>();
  List<String>? preAuthRef;
  ToMany<ObjectBoxElement>? preAuthRefElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxPeriod>? preAuthRefPeriod = ToMany<ObjectBoxPeriod>();
  ToMany<ObjectBoxExplanationOfBenefitCareTeam>? careTeam =
      ToMany<ObjectBoxExplanationOfBenefitCareTeam>();
  ToMany<ObjectBoxExplanationOfBenefitSupportingInfo>? supportingInfo =
      ToMany<ObjectBoxExplanationOfBenefitSupportingInfo>();
  ToMany<ObjectBoxExplanationOfBenefitDiagnosis>? diagnosis =
      ToMany<ObjectBoxExplanationOfBenefitDiagnosis>();
  ToMany<ObjectBoxExplanationOfBenefitProcedure>? procedure =
      ToMany<ObjectBoxExplanationOfBenefitProcedure>();
  int? precedence;
  ToOne<ObjectBoxElement>? precedenceElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxExplanationOfBenefitInsurance> insurance =
      ToMany<ObjectBoxExplanationOfBenefitInsurance>();
  ToOne<ObjectBoxExplanationOfBenefitAccident>? accident =
      ToOne<ObjectBoxExplanationOfBenefitAccident>();
  ToMany<ObjectBoxExplanationOfBenefitItem>? item =
      ToMany<ObjectBoxExplanationOfBenefitItem>();
  ToMany<ObjectBoxExplanationOfBenefitAddItem>? addItem =
      ToMany<ObjectBoxExplanationOfBenefitAddItem>();
  ToMany<ObjectBoxExplanationOfBenefitAdjudication>? adjudication =
      ToMany<ObjectBoxExplanationOfBenefitAdjudication>();
  ToMany<ObjectBoxExplanationOfBenefitTotal>? total =
      ToMany<ObjectBoxExplanationOfBenefitTotal>();
  ToOne<ObjectBoxExplanationOfBenefitPayment>? payment =
      ToOne<ObjectBoxExplanationOfBenefitPayment>();
  ToOne<ObjectBoxCodeableConcept>? formCode = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxAttachment>? form = ToOne<ObjectBoxAttachment>();
  ToMany<ObjectBoxExplanationOfBenefitProcessNote>? processNote =
      ToMany<ObjectBoxExplanationOfBenefitProcessNote>();
  ToOne<ObjectBoxPeriod>? benefitPeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxExplanationOfBenefitBenefitBalance>? benefitBalance =
      ToMany<ObjectBoxExplanationOfBenefitBenefitBalance>();
}

@Entity()
class ObjectBoxExplanationOfBenefitRelated {
  ObjectBoxExplanationOfBenefitRelated({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference>? claim = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? relationship =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxIdentifier>? reference = ToOne<ObjectBoxIdentifier>();
}

@Entity()
class ObjectBoxExplanationOfBenefitPayee {
  ObjectBoxExplanationOfBenefitPayee({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.party,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? party = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxExplanationOfBenefitCareTeam {
  ObjectBoxExplanationOfBenefitCareTeam({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement>? sequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> provider = ToOne<ObjectBoxReference>();
  bool? responsible;
  ToOne<ObjectBoxElement>? responsibleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? role = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? qualification =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxExplanationOfBenefitSupportingInfo {
  ObjectBoxExplanationOfBenefitSupportingInfo({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement>? sequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  String? timingDate;
  ToOne<ObjectBoxElement>? timingDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? timingPeriod = ToOne<ObjectBoxPeriod>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement>? valueBooleanElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement>? valueStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity>? valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxAttachment>? valueAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference>? valueReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCoding>? reason = ToOne<ObjectBoxCoding>();
}

@Entity()
class ObjectBoxExplanationOfBenefitDiagnosis {
  ObjectBoxExplanationOfBenefitDiagnosis({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement>? sequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? diagnosisCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? diagnosisReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? type = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? onAdmission =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? packageCode =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxExplanationOfBenefitProcedure {
  ObjectBoxExplanationOfBenefitProcedure({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement>? sequenceElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? type = ToMany<ObjectBoxCodeableConcept>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? procedureCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? procedureReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? udi = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxExplanationOfBenefitInsurance {
  ObjectBoxExplanationOfBenefitInsurance({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool focal;
  ToOne<ObjectBoxElement>? focalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> coverage = ToOne<ObjectBoxReference>();
  List<String>? preAuthRef;
  ToMany<ObjectBoxElement>? preAuthRefElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxExplanationOfBenefitAccident {
  ObjectBoxExplanationOfBenefitAccident({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxAddress>? locationAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxReference>? locationReference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxExplanationOfBenefitItem {
  ObjectBoxExplanationOfBenefitItem({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement>? sequenceElement = ToOne<ObjectBoxElement>();
  List<int>? careTeamSequence;
  ToMany<ObjectBoxElement>? careTeamSequenceElement =
      ToMany<ObjectBoxElement>();
  List<int>? diagnosisSequence;
  ToMany<ObjectBoxElement>? diagnosisSequenceElement =
      ToMany<ObjectBoxElement>();
  List<int>? procedureSequence;
  ToMany<ObjectBoxElement>? procedureSequenceElement =
      ToMany<ObjectBoxElement>();
  List<int>? informationSequence;
  ToMany<ObjectBoxElement>? informationSequenceElement =
      ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? revenue = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? programCode =
      ToMany<ObjectBoxCodeableConcept>();
  String? servicedDate;
  ToOne<ObjectBoxElement>? servicedDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? servicedPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept>? locationCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxAddress>? locationAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxReference>? locationReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney>? unitPrice = ToOne<ObjectBoxMoney>();
  double? factor;
  ToOne<ObjectBoxElement>? factorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney>? net = ToOne<ObjectBoxMoney>();
  ToMany<ObjectBoxReference>? udi = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? bodySite = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? subSite =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? encounter = ToMany<ObjectBoxReference>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement>? noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxExplanationOfBenefitAdjudication>? adjudication =
      ToMany<ObjectBoxExplanationOfBenefitAdjudication>();
  ToMany<ObjectBoxExplanationOfBenefitDetail>? detail =
      ToMany<ObjectBoxExplanationOfBenefitDetail>();
}

@Entity()
class ObjectBoxExplanationOfBenefitAdjudication {
  ObjectBoxExplanationOfBenefitAdjudication({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? reason = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxMoney>? amount = ToOne<ObjectBoxMoney>();
  double? value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxExplanationOfBenefitDetail {
  ObjectBoxExplanationOfBenefitDetail({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement>? sequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? revenue = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? programCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney>? unitPrice = ToOne<ObjectBoxMoney>();
  double? factor;
  ToOne<ObjectBoxElement>? factorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney>? net = ToOne<ObjectBoxMoney>();
  ToMany<ObjectBoxReference>? udi = ToMany<ObjectBoxReference>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement>? noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxExplanationOfBenefitAdjudication>? adjudication =
      ToMany<ObjectBoxExplanationOfBenefitAdjudication>();
  ToMany<ObjectBoxExplanationOfBenefitSubDetail>? subDetail =
      ToMany<ObjectBoxExplanationOfBenefitSubDetail>();
}

@Entity()
class ObjectBoxExplanationOfBenefitSubDetail {
  ObjectBoxExplanationOfBenefitSubDetail({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement>? sequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? revenue = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? programCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney>? unitPrice = ToOne<ObjectBoxMoney>();
  double? factor;
  ToOne<ObjectBoxElement>? factorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney>? net = ToOne<ObjectBoxMoney>();
  ToMany<ObjectBoxReference>? udi = ToMany<ObjectBoxReference>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement>? noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxExplanationOfBenefitAdjudication>? adjudication =
      ToMany<ObjectBoxExplanationOfBenefitAdjudication>();
}

@Entity()
class ObjectBoxExplanationOfBenefitAddItem {
  ObjectBoxExplanationOfBenefitAddItem({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<int>? itemSequence;
  ToMany<ObjectBoxElement>? itemSequenceElement = ToMany<ObjectBoxElement>();
  List<int>? detailSequence;
  ToMany<ObjectBoxElement>? detailSequenceElement = ToMany<ObjectBoxElement>();
  List<int>? subDetailSequence;
  ToMany<ObjectBoxElement>? subDetailSequenceElement =
      ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? provider = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? programCode =
      ToMany<ObjectBoxCodeableConcept>();
  String? servicedDate;
  ToOne<ObjectBoxElement>? servicedDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? servicedPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept>? locationCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxAddress>? locationAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxReference>? locationReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney>? unitPrice = ToOne<ObjectBoxMoney>();
  double? factor;
  ToOne<ObjectBoxElement>? factorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney>? net = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxCodeableConcept>? bodySite = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? subSite =
      ToMany<ObjectBoxCodeableConcept>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement>? noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxExplanationOfBenefitAdjudication>? adjudication =
      ToMany<ObjectBoxExplanationOfBenefitAdjudication>();
  ToMany<ObjectBoxExplanationOfBenefitDetail>? detail =
      ToMany<ObjectBoxExplanationOfBenefitDetail>();
}

@Entity()
class ObjectBoxExplanationOfBenefitDetail1 {
  ObjectBoxExplanationOfBenefitDetail1({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney>? unitPrice = ToOne<ObjectBoxMoney>();
  double? factor;
  ToOne<ObjectBoxElement>? factorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney>? net = ToOne<ObjectBoxMoney>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement>? noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxExplanationOfBenefitAdjudication>? adjudication =
      ToMany<ObjectBoxExplanationOfBenefitAdjudication>();
  ToMany<ObjectBoxExplanationOfBenefitSubDetail>? subDetail =
      ToMany<ObjectBoxExplanationOfBenefitSubDetail>();
}

@Entity()
class ObjectBoxExplanationOfBenefitSubDetail1 {
  ObjectBoxExplanationOfBenefitSubDetail1({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney>? unitPrice = ToOne<ObjectBoxMoney>();
  double? factor;
  ToOne<ObjectBoxElement>? factorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney>? net = ToOne<ObjectBoxMoney>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement>? noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxExplanationOfBenefitAdjudication>? adjudication =
      ToMany<ObjectBoxExplanationOfBenefitAdjudication>();
}

@Entity()
class ObjectBoxExplanationOfBenefitTotal {
  ObjectBoxExplanationOfBenefitTotal({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.category,
    required this.amount,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxMoney> amount = ToOne<ObjectBoxMoney>();
}

@Entity()
class ObjectBoxExplanationOfBenefitPayment {
  ObjectBoxExplanationOfBenefitPayment({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxMoney>? adjustment = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxCodeableConcept>? adjustmentReason =
      ToOne<ObjectBoxCodeableConcept>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney>? amount = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
}

@Entity()
class ObjectBoxExplanationOfBenefitProcessNote {
  ObjectBoxExplanationOfBenefitProcessNote({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? number;
  ToOne<ObjectBoxElement>? numberElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? language = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxExplanationOfBenefitBenefitBalance {
  ObjectBoxExplanationOfBenefitBenefitBalance({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  bool? excluded;
  ToOne<ObjectBoxElement>? excludedElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? network = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? unit = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? term = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxExplanationOfBenefitFinancial>? financial =
      ToMany<ObjectBoxExplanationOfBenefitFinancial>();
}

@Entity()
class ObjectBoxExplanationOfBenefitFinancial {
  ObjectBoxExplanationOfBenefitFinancial({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  int? allowedUnsignedInt;
  ToOne<ObjectBoxElement>? allowedUnsignedIntElement =
      ToOne<ObjectBoxElement>();
  String? allowedString;
  ToOne<ObjectBoxElement>? allowedStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney>? allowedMoney = ToOne<ObjectBoxMoney>();
  int? usedUnsignedInt;
  ToOne<ObjectBoxElement>? usedUnsignedIntElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney>? usedMoney = ToOne<ObjectBoxMoney>();
}
