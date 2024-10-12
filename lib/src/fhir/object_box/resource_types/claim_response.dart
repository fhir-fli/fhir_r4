// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxClaimResponse {
  ObjectBoxClaimResponse({
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
  String created;
  ToOne<ObjectBoxElement>? createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> insurer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? requestor = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? request = ToOne<ObjectBoxReference>();
  String outcome;
  ToOne<ObjectBoxElement>? outcomeElement = ToOne<ObjectBoxElement>();
  String? disposition;
  ToOne<ObjectBoxElement>? dispositionElement = ToOne<ObjectBoxElement>();
  String? preAuthRef;
  ToOne<ObjectBoxElement>? preAuthRefElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? preAuthPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept>? payeeType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxClaimResponseItem>? item =
      ToMany<ObjectBoxClaimResponseItem>();
  ToMany<ObjectBoxClaimResponseAddItem>? addItem =
      ToMany<ObjectBoxClaimResponseAddItem>();
  ToMany<ObjectBoxClaimResponseAdjudication>? adjudication =
      ToMany<ObjectBoxClaimResponseAdjudication>();
  ToMany<ObjectBoxClaimResponseTotal>? total =
      ToMany<ObjectBoxClaimResponseTotal>();
  ToOne<ObjectBoxClaimResponsePayment>? payment =
      ToOne<ObjectBoxClaimResponsePayment>();
  ToOne<ObjectBoxCodeableConcept>? fundsReserve =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? formCode = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxAttachment>? form = ToOne<ObjectBoxAttachment>();
  ToMany<ObjectBoxClaimResponseProcessNote>? processNote =
      ToMany<ObjectBoxClaimResponseProcessNote>();
  ToMany<ObjectBoxReference>? communicationRequest =
      ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxClaimResponseInsurance>? insurance =
      ToMany<ObjectBoxClaimResponseInsurance>();
  ToMany<ObjectBoxClaimResponseError>? error =
      ToMany<ObjectBoxClaimResponseError>();
}

@Entity()
class ObjectBoxClaimResponseItem {
  ObjectBoxClaimResponseItem({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int itemSequence;
  ToOne<ObjectBoxElement>? itemSequenceElement = ToOne<ObjectBoxElement>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement>? noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxClaimResponseAdjudication> adjudication =
      ToMany<ObjectBoxClaimResponseAdjudication>();
  ToMany<ObjectBoxClaimResponseDetail>? detail =
      ToMany<ObjectBoxClaimResponseDetail>();
}

@Entity()
class ObjectBoxClaimResponseAdjudication {
  ObjectBoxClaimResponseAdjudication({
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
class ObjectBoxClaimResponseDetail {
  ObjectBoxClaimResponseDetail({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int detailSequence;
  ToOne<ObjectBoxElement>? detailSequenceElement = ToOne<ObjectBoxElement>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement>? noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxClaimResponseAdjudication> adjudication =
      ToMany<ObjectBoxClaimResponseAdjudication>();
  ToMany<ObjectBoxClaimResponseSubDetail>? subDetail =
      ToMany<ObjectBoxClaimResponseSubDetail>();
}

@Entity()
class ObjectBoxClaimResponseSubDetail {
  ObjectBoxClaimResponseSubDetail({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int subDetailSequence;
  ToOne<ObjectBoxElement>? subDetailSequenceElement = ToOne<ObjectBoxElement>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement>? noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxClaimResponseAdjudication>? adjudication =
      ToMany<ObjectBoxClaimResponseAdjudication>();
}

@Entity()
class ObjectBoxClaimResponseAddItem {
  ObjectBoxClaimResponseAddItem({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<int>? itemSequence;
  ToMany<ObjectBoxElement>? itemSequenceElement = ToMany<ObjectBoxElement>();
  List<int>? detailSequence;
  ToMany<ObjectBoxElement>? detailSequenceElement = ToMany<ObjectBoxElement>();
  List<int>? subdetailSequence;
  ToMany<ObjectBoxElement>? subdetailSequenceElement =
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
  ToMany<ObjectBoxClaimResponseAdjudication> adjudication =
      ToMany<ObjectBoxClaimResponseAdjudication>();
  ToMany<ObjectBoxClaimResponseDetail>? detail =
      ToMany<ObjectBoxClaimResponseDetail>();
}

@Entity()
class ObjectBoxClaimResponseDetail1 {
  ObjectBoxClaimResponseDetail1({
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
  ToMany<ObjectBoxClaimResponseAdjudication> adjudication =
      ToMany<ObjectBoxClaimResponseAdjudication>();
  ToMany<ObjectBoxClaimResponseSubDetail>? subDetail =
      ToMany<ObjectBoxClaimResponseSubDetail>();
}

@Entity()
class ObjectBoxClaimResponseSubDetail1 {
  ObjectBoxClaimResponseSubDetail1({
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
  ToMany<ObjectBoxClaimResponseAdjudication> adjudication =
      ToMany<ObjectBoxClaimResponseAdjudication>();
}

@Entity()
class ObjectBoxClaimResponseTotal {
  ObjectBoxClaimResponseTotal({
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
class ObjectBoxClaimResponsePayment {
  ObjectBoxClaimResponsePayment({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxMoney>? adjustment = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxCodeableConcept>? adjustmentReason =
      ToOne<ObjectBoxCodeableConcept>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> amount = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
}

@Entity()
class ObjectBoxClaimResponseProcessNote {
  ObjectBoxClaimResponseProcessNote({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? number;
  ToOne<ObjectBoxElement>? numberElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? language = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxClaimResponseInsurance {
  ObjectBoxClaimResponseInsurance({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement>? sequenceElement = ToOne<ObjectBoxElement>();
  bool focal;
  ToOne<ObjectBoxElement>? focalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> coverage = ToOne<ObjectBoxReference>();
  String? businessArrangement;
  ToOne<ObjectBoxElement>? businessArrangementElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? claimResponse = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxClaimResponseError {
  ObjectBoxClaimResponseError({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? itemSequence;
  ToOne<ObjectBoxElement>? itemSequenceElement = ToOne<ObjectBoxElement>();
  int? detailSequence;
  ToOne<ObjectBoxElement>? detailSequenceElement = ToOne<ObjectBoxElement>();
  int? subDetailSequence;
  ToOne<ObjectBoxElement>? subDetailSequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
}
