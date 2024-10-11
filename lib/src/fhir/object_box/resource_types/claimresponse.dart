import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ClaimResponse extends Resource {
  ClaimResponse({
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
    required this.created,
    this.createdElement,
    required this.insurer,
    this.requestor,
    this.request,
    required this.outcome,
    this.outcomeElement,
    this.disposition,
    this.dispositionElement,
    this.preAuthRef,
    this.preAuthRefElement,
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
  String created;
  ToOne<Element>? createdElement = ToOne<Element>();
  ToOne<Reference> insurer = ToOne<Reference>();
  ToOne<Reference>? requestor = ToOne<Reference>();
  ToOne<Reference>? request = ToOne<Reference>();
  String outcome;
  ToOne<Element>? outcomeElement = ToOne<Element>();
  String? disposition;
  ToOne<Element>? dispositionElement = ToOne<Element>();
  String? preAuthRef;
  ToOne<Element>? preAuthRefElement = ToOne<Element>();
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
    this.itemSequenceElement,
    this.noteNumber,
    this.noteNumberElement,
    required this.adjudication,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int itemSequence;
  ToOne<Element>? itemSequenceElement = ToOne<Element>();
  List<int>? noteNumber;
  ToMany<Element>? noteNumberElement = ToMany<Element>();
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
class ClaimResponseDetail {
  ClaimResponseDetail({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.detailSequence,
    this.detailSequenceElement,
    this.noteNumber,
    this.noteNumberElement,
    required this.adjudication,
    this.subDetail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int detailSequence;
  ToOne<Element>? detailSequenceElement = ToOne<Element>();
  List<int>? noteNumber;
  ToMany<Element>? noteNumberElement = ToMany<Element>();
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
    this.subDetailSequenceElement,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int subDetailSequence;
  ToOne<Element>? subDetailSequenceElement = ToOne<Element>();
  List<int>? noteNumber;
  ToMany<Element>? noteNumberElement = ToMany<Element>();
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
    this.itemSequenceElement,
    this.detailSequence,
    this.detailSequenceElement,
    this.subdetailSequence,
    this.subdetailSequenceElement,
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
    required this.adjudication,
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
  List<int>? subdetailSequence;
  ToMany<Element>? subdetailSequenceElement = ToMany<Element>();
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
    this.factorElement,
    this.net,
    this.noteNumber,
    this.noteNumberElement,
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
  ToOne<Element>? factorElement = ToOne<Element>();
  ToOne<Money>? net = ToOne<Money>();
  List<int>? noteNumber;
  ToMany<Element>? noteNumberElement = ToMany<Element>();
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
    this.factorElement,
    this.net,
    this.noteNumber,
    this.noteNumberElement,
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
  ToOne<Element>? factorElement = ToOne<Element>();
  ToOne<Money>? net = ToOne<Money>();
  List<int>? noteNumber;
  ToMany<Element>? noteNumberElement = ToMany<Element>();
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
    this.dateElement,
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
  ToOne<Element>? dateElement = ToOne<Element>();
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
    this.numberElement,
    this.type,
    this.typeElement,
    required this.text,
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
  String text;
  ToOne<Element>? textElement = ToOne<Element>();
  ToOne<CodeableConcept>? language = ToOne<CodeableConcept>();
}

@Entity()
class ClaimResponseInsurance {
  ClaimResponseInsurance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    required this.focal,
    this.focalElement,
    required this.coverage,
    this.businessArrangement,
    this.businessArrangementElement,
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
  ToOne<Reference> coverage = ToOne<Reference>();
  String? businessArrangement;
  ToOne<Element>? businessArrangementElement = ToOne<Element>();
  ToOne<Reference>? claimResponse = ToOne<Reference>();
}

@Entity()
class ClaimResponseError {
  ClaimResponseError({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.itemSequence,
    this.itemSequenceElement,
    this.detailSequence,
    this.detailSequenceElement,
    this.subDetailSequence,
    this.subDetailSequenceElement,
    required this.code,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? itemSequence;
  ToOne<Element>? itemSequenceElement = ToOne<Element>();
  int? detailSequence;
  ToOne<Element>? detailSequenceElement = ToOne<Element>();
  int? subDetailSequence;
  ToOne<Element>? subDetailSequenceElement = ToOne<Element>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
}
