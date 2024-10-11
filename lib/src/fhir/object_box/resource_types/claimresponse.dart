import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ClaimResponse extends Resource {
  ClaimResponse({
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
    required this.created,
    required this.insurer,
    this.requestor,
    this.request,
    required this.outcome,
    this.disposition,
    this.preAuthRef,
    this.preAuthPeriod,
    this.payeeType,
    this.item,
    this.addItem,
    this.adjudication,
    this.total,
    this.payment,
    this.fundsReserve,
    this.formCode,
    this.form,
    this.processNote,
    this.communicationRequest,
    this.insurance,
    this.error,
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
  String created;
  ToOne<Reference> insurer = ToOne<Reference>();
  ToOne<Reference>? requestor = ToOne<Reference>();
  ToOne<Reference>? request = ToOne<Reference>();
  String outcome;
  String? disposition;
  String? preAuthRef;
  ToOne<Period>? preAuthPeriod = ToOne<Period>();
  ToOne<CodeableConcept>? payeeType = ToOne<CodeableConcept>();
  ToMany<ClaimResponseItem>? item = ToMany<ClaimResponseItem>();
  ToMany<ClaimResponseAddItem>? addItem = ToMany<ClaimResponseAddItem>();
  ToMany<ClaimResponseAdjudication>? adjudication =
      ToMany<ClaimResponseAdjudication>();
  ToMany<ClaimResponseTotal>? total = ToMany<ClaimResponseTotal>();
  ToOne<ClaimResponsePayment>? payment = ToOne<ClaimResponsePayment>();
  ToOne<CodeableConcept>? fundsReserve = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? formCode = ToOne<CodeableConcept>();
  ToOne<Attachment>? form = ToOne<Attachment>();
  ToMany<ClaimResponseProcessNote>? processNote =
      ToMany<ClaimResponseProcessNote>();
  ToMany<Reference>? communicationRequest = ToMany<Reference>();
  ToMany<ClaimResponseInsurance>? insurance = ToMany<ClaimResponseInsurance>();
  ToMany<ClaimResponseError>? error = ToMany<ClaimResponseError>();
}

@Entity()
class ClaimResponseItem {
  ClaimResponseItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.itemSequence,
    this.noteNumber,
    required this.adjudication,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int itemSequence;
  List<int>? noteNumber;
  ToMany<ClaimResponseAdjudication> adjudication =
      ToMany<ClaimResponseAdjudication>();
  ToMany<ClaimResponseDetail>? detail = ToMany<ClaimResponseDetail>();
}

@Entity()
class ClaimResponseAdjudication {
  ClaimResponseAdjudication({
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
class ClaimResponseDetail {
  ClaimResponseDetail({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.detailSequence,
    this.noteNumber,
    required this.adjudication,
    this.subDetail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int detailSequence;
  List<int>? noteNumber;
  ToMany<ClaimResponseAdjudication> adjudication =
      ToMany<ClaimResponseAdjudication>();
  ToMany<ClaimResponseSubDetail>? subDetail = ToMany<ClaimResponseSubDetail>();
}

@Entity()
class ClaimResponseSubDetail {
  ClaimResponseSubDetail({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.subDetailSequence,
    this.noteNumber,
    this.adjudication,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int subDetailSequence;
  List<int>? noteNumber;
  ToMany<ClaimResponseAdjudication>? adjudication =
      ToMany<ClaimResponseAdjudication>();
}

@Entity()
class ClaimResponseAddItem {
  ClaimResponseAddItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.itemSequence,
    this.detailSequence,
    this.subdetailSequence,
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
    required this.adjudication,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  List<int>? itemSequence;
  List<int>? detailSequence;
  List<int>? subdetailSequence;
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
  ToMany<ClaimResponseAdjudication> adjudication =
      ToMany<ClaimResponseAdjudication>();
  ToMany<ClaimResponseDetail>? detail = ToMany<ClaimResponseDetail>();
}

@Entity()
class ClaimResponseDetail1 {
  ClaimResponseDetail1({
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
    required this.adjudication,
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
  ToMany<ClaimResponseAdjudication> adjudication =
      ToMany<ClaimResponseAdjudication>();
  ToMany<ClaimResponseSubDetail>? subDetail = ToMany<ClaimResponseSubDetail>();
}

@Entity()
class ClaimResponseSubDetail1 {
  ClaimResponseSubDetail1({
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
    required this.adjudication,
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
  ToMany<ClaimResponseAdjudication> adjudication =
      ToMany<ClaimResponseAdjudication>();
}

@Entity()
class ClaimResponseTotal {
  ClaimResponseTotal({
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
class ClaimResponsePayment {
  ClaimResponsePayment({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    required this.amount,
    this.identifier,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToOne<Money>? adjustment = ToOne<Money>();
  ToOne<CodeableConcept>? adjustmentReason = ToOne<CodeableConcept>();
  String? date;
  ToOne<Money> amount = ToOne<Money>();
  ToOne<Identifier>? identifier = ToOne<Identifier>();
}

@Entity()
class ClaimResponseProcessNote {
  ClaimResponseProcessNote({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.number,
    this.type,
    required this.text,
    this.language,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? number;
  String? type;
  String text;
  ToOne<CodeableConcept>? language = ToOne<CodeableConcept>();
}

@Entity()
class ClaimResponseInsurance {
  ClaimResponseInsurance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.sequence,
    required this.focal,
    required this.coverage,
    this.businessArrangement,
    this.claimResponse,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  bool focal;
  ToOne<Reference> coverage = ToOne<Reference>();
  String? businessArrangement;
  ToOne<Reference>? claimResponse = ToOne<Reference>();
}

@Entity()
class ClaimResponseError {
  ClaimResponseError({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.itemSequence,
    this.detailSequence,
    this.subDetailSequence,
    required this.code,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? itemSequence;
  int? detailSequence;
  int? subDetailSequence;
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
}
