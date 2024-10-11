import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Claim extends Resource {
  Claim({
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
  ToOne<Reference>? insurer = ToOne<Reference>();
  ToOne<Reference> provider = ToOne<Reference>();
  ToOne<CodeableConcept> priority = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? fundsReserve = ToOne<CodeableConcept>();
  ToMany<ClaimRelated>? related = ToMany<ClaimRelated>();
  ToOne<Reference>? prescription = ToOne<Reference>();
  ToOne<Reference>? originalPrescription = ToOne<Reference>();
  ToOne<ClaimPayee>? payee = ToOne<ClaimPayee>();
  ToOne<Reference>? referral = ToOne<Reference>();
  ToOne<Reference>? facility = ToOne<Reference>();
  ToMany<ClaimCareTeam>? careTeam = ToMany<ClaimCareTeam>();
  ToMany<ClaimSupportingInfo>? supportingInfo = ToMany<ClaimSupportingInfo>();
  ToMany<ClaimDiagnosis>? diagnosis = ToMany<ClaimDiagnosis>();
  ToMany<ClaimProcedure>? procedure = ToMany<ClaimProcedure>();
  ToMany<ClaimInsurance> insurance = ToMany<ClaimInsurance>();
  ToOne<ClaimAccident>? accident = ToOne<ClaimAccident>();
  ToMany<ClaimItem>? item = ToMany<ClaimItem>();
  ToOne<Money>? total = ToOne<Money>();
}

@Entity()
class ClaimRelated {
  ClaimRelated({
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
class ClaimPayee {
  ClaimPayee({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.party,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToOne<Reference>? party = ToOne<Reference>();
}

@Entity()
class ClaimCareTeam {
  ClaimCareTeam({
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
class ClaimSupportingInfo {
  ClaimSupportingInfo({
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
  ToOne<CodeableConcept>? reason = ToOne<CodeableConcept>();
}

@Entity()
class ClaimDiagnosis {
  ClaimDiagnosis({
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
class ClaimProcedure {
  ClaimProcedure({
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
class ClaimInsurance {
  ClaimInsurance({
    this.id,
    this.extension_,
    this.modifierExtension,
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  ToOne<Element>? sequenceElement = ToOne<Element>();
  bool focal;
  ToOne<Element>? focalElement = ToOne<Element>();
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  ToOne<Reference> coverage = ToOne<Reference>();
  String? businessArrangement;
  ToOne<Element>? businessArrangementElement = ToOne<Element>();
  List<String>? preAuthRef;
  ToMany<Element>? preAuthRefElement = ToMany<Element>();
  ToOne<Reference>? claimResponse = ToOne<Reference>();
}

@Entity()
class ClaimAccident {
  ClaimAccident({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.date,
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
  String date;
  ToOne<Element>? dateElement = ToOne<Element>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Address>? locationAddress = ToOne<Address>();
  ToOne<Reference>? locationReference = ToOne<Reference>();
}

@Entity()
class ClaimItem {
  ClaimItem({
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
  ToMany<ClaimDetail>? detail = ToMany<ClaimDetail>();
}

@Entity()
class ClaimDetail {
  ClaimDetail({
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
  ToMany<ClaimSubDetail>? subDetail = ToMany<ClaimSubDetail>();
}

@Entity()
class ClaimSubDetail {
  ClaimSubDetail({
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
}
