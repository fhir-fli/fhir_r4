import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Claim extends Resource {
  Claim({
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
class ClaimSupportingInfo {
  ClaimSupportingInfo({
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
  ToOne<CodeableConcept>? reason = ToOne<CodeableConcept>();
}

@Entity()
class ClaimDiagnosis {
  ClaimDiagnosis({
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
class ClaimProcedure {
  ClaimProcedure({
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
class ClaimInsurance {
  ClaimInsurance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.sequence,
    required this.focal,
    this.identifier,
    required this.coverage,
    this.businessArrangement,
    this.preAuthRef,
    this.claimResponse,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  bool focal;
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  ToOne<Reference> coverage = ToOne<Reference>();
  String? businessArrangement;
  List<String>? preAuthRef;
  ToOne<Reference>? claimResponse = ToOne<Reference>();
}

@Entity()
class ClaimAccident {
  ClaimAccident({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.date,
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
  ToMany<ClaimDetail>? detail = ToMany<ClaimDetail>();
}

@Entity()
class ClaimDetail {
  ClaimDetail({
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
  ToMany<ClaimSubDetail>? subDetail = ToMany<ClaimSubDetail>();
}

@Entity()
class ClaimSubDetail {
  ClaimSubDetail({
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
}
