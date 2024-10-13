// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxClaimResponse {
  ObjectBoxClaimResponse({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? subType,
    required this.use,
    ObjectBoxElement? useElement,
    ObjectBoxReference? patient,
    required this.created,
    ObjectBoxElement? createdElement,
    ObjectBoxReference? insurer,
    ObjectBoxReference? requestor,
    ObjectBoxReference? request,
    required this.outcome,
    ObjectBoxElement? outcomeElement,
    this.disposition,
    ObjectBoxElement? dispositionElement,
    this.preAuthRef,
    ObjectBoxElement? preAuthRefElement,
    ObjectBoxPeriod? preAuthPeriod,
    ObjectBoxCodeableConcept? payeeType,
    List<ObjectBoxClaimResponseItem>? item,
    List<ObjectBoxClaimResponseAddItem>? addItem,
    List<ObjectBoxClaimResponseAdjudication>? adjudication,
    List<ObjectBoxClaimResponseTotal>? total,
    ObjectBoxClaimResponsePayment? payment,
    ObjectBoxCodeableConcept? fundsReserve,
    ObjectBoxCodeableConcept? formCode,
    ObjectBoxAttachment? form,
    List<ObjectBoxClaimResponseProcessNote>? processNote,
    List<ObjectBoxReference>? communicationRequest,
    List<ObjectBoxClaimResponseInsurance>? insurance,
    List<ObjectBoxClaimResponseError>? error,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.type.target = type;
    this.subType.target = subType;
    this.useElement.target = useElement;
    this.patient.target = patient;
    this.createdElement.target = createdElement;
    this.insurer.target = insurer;
    this.requestor.target = requestor;
    this.request.target = request;
    this.outcomeElement.target = outcomeElement;
    this.dispositionElement.target = dispositionElement;
    this.preAuthRefElement.target = preAuthRefElement;
    this.preAuthPeriod.target = preAuthPeriod;
    this.payeeType.target = payeeType;
    this.item.addAll(item ?? []);
    this.addItem.addAll(addItem ?? []);
    this.adjudication.addAll(adjudication ?? []);
    this.total.addAll(total ?? []);
    this.payment.target = payment;
    this.fundsReserve.target = fundsReserve;
    this.formCode.target = formCode;
    this.form.target = form;
    this.processNote.addAll(processNote ?? []);
    this.communicationRequest.addAll(communicationRequest ?? []);
    this.insurance.addAll(insurance ?? []);
    this.error.addAll(error ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> subType = ToOne<ObjectBoxCodeableConcept>();
  String use;
  ToOne<ObjectBoxElement> useElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  String created;
  ToOne<ObjectBoxElement> createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> insurer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> requestor = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> request = ToOne<ObjectBoxReference>();
  String outcome;
  ToOne<ObjectBoxElement> outcomeElement = ToOne<ObjectBoxElement>();
  String? disposition;
  ToOne<ObjectBoxElement> dispositionElement = ToOne<ObjectBoxElement>();
  String? preAuthRef;
  ToOne<ObjectBoxElement> preAuthRefElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> preAuthPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept> payeeType = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxClaimResponseItem> item =
      ToMany<ObjectBoxClaimResponseItem>();
  ToMany<ObjectBoxClaimResponseAddItem> addItem =
      ToMany<ObjectBoxClaimResponseAddItem>();
  ToMany<ObjectBoxClaimResponseAdjudication> adjudication =
      ToMany<ObjectBoxClaimResponseAdjudication>();
  ToMany<ObjectBoxClaimResponseTotal> total =
      ToMany<ObjectBoxClaimResponseTotal>();
  ToOne<ObjectBoxClaimResponsePayment> payment =
      ToOne<ObjectBoxClaimResponsePayment>();
  ToOne<ObjectBoxCodeableConcept> fundsReserve =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> formCode = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxAttachment> form = ToOne<ObjectBoxAttachment>();
  ToMany<ObjectBoxClaimResponseProcessNote> processNote =
      ToMany<ObjectBoxClaimResponseProcessNote>();
  ToMany<ObjectBoxReference> communicationRequest =
      ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxClaimResponseInsurance> insurance =
      ToMany<ObjectBoxClaimResponseInsurance>();
  ToMany<ObjectBoxClaimResponseError> error =
      ToMany<ObjectBoxClaimResponseError>();
}

@Entity()
class ObjectBoxClaimResponseItem {
  ObjectBoxClaimResponseItem({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.itemSequence,
    ObjectBoxElement? itemSequenceElement,
    this.noteNumber,
    List<ObjectBoxElement>? noteNumberElement,
    List<ObjectBoxClaimResponseAdjudication>? adjudication,
    List<ObjectBoxClaimResponseDetail>? detail,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.itemSequenceElement.target = itemSequenceElement;
    this.noteNumberElement.addAll(noteNumberElement ?? []);
    this.adjudication.addAll(adjudication ?? []);
    this.detail.addAll(detail ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int itemSequence;
  ToOne<ObjectBoxElement> itemSequenceElement = ToOne<ObjectBoxElement>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement> noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxClaimResponseAdjudication> adjudication =
      ToMany<ObjectBoxClaimResponseAdjudication>();
  ToMany<ObjectBoxClaimResponseDetail> detail =
      ToMany<ObjectBoxClaimResponseDetail>();
}

@Entity()
class ObjectBoxClaimResponseAdjudication {
  ObjectBoxClaimResponseAdjudication({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? category,
    ObjectBoxCodeableConcept? reason,
    ObjectBoxMoney? amount,
    this.value,
    ObjectBoxElement? valueElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.category.target = category;
    this.reason.target = reason;
    this.amount.target = amount;
    this.valueElement.target = valueElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> reason = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxMoney> amount = ToOne<ObjectBoxMoney>();
  double? value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxClaimResponseDetail {
  ObjectBoxClaimResponseDetail({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.detailSequence,
    ObjectBoxElement? detailSequenceElement,
    this.noteNumber,
    List<ObjectBoxElement>? noteNumberElement,
    List<ObjectBoxClaimResponseAdjudication>? adjudication,
    List<ObjectBoxClaimResponseSubDetail>? subDetail,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.detailSequenceElement.target = detailSequenceElement;
    this.noteNumberElement.addAll(noteNumberElement ?? []);
    this.adjudication.addAll(adjudication ?? []);
    this.subDetail.addAll(subDetail ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int detailSequence;
  ToOne<ObjectBoxElement> detailSequenceElement = ToOne<ObjectBoxElement>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement> noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxClaimResponseAdjudication> adjudication =
      ToMany<ObjectBoxClaimResponseAdjudication>();
  ToMany<ObjectBoxClaimResponseSubDetail> subDetail =
      ToMany<ObjectBoxClaimResponseSubDetail>();
}

@Entity()
class ObjectBoxClaimResponseSubDetail {
  ObjectBoxClaimResponseSubDetail({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.subDetailSequence,
    ObjectBoxElement? subDetailSequenceElement,
    this.noteNumber,
    List<ObjectBoxElement>? noteNumberElement,
    List<ObjectBoxClaimResponseAdjudication>? adjudication,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.subDetailSequenceElement.target = subDetailSequenceElement;
    this.noteNumberElement.addAll(noteNumberElement ?? []);
    this.adjudication.addAll(adjudication ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int subDetailSequence;
  ToOne<ObjectBoxElement> subDetailSequenceElement = ToOne<ObjectBoxElement>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement> noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxClaimResponseAdjudication> adjudication =
      ToMany<ObjectBoxClaimResponseAdjudication>();
}

@Entity()
class ObjectBoxClaimResponseAddItem {
  ObjectBoxClaimResponseAddItem({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.itemSequence,
    List<ObjectBoxElement>? itemSequenceElement,
    this.detailSequence,
    List<ObjectBoxElement>? detailSequenceElement,
    this.subdetailSequence,
    List<ObjectBoxElement>? subdetailSequenceElement,
    List<ObjectBoxReference>? provider,
    ObjectBoxCodeableConcept? productOrService,
    List<ObjectBoxCodeableConcept>? modifier,
    List<ObjectBoxCodeableConcept>? programCode,
    this.servicedDate,
    ObjectBoxElement? servicedDateElement,
    ObjectBoxPeriod? servicedPeriod,
    ObjectBoxCodeableConcept? locationCodeableConcept,
    ObjectBoxAddress? locationAddress,
    ObjectBoxReference? locationReference,
    ObjectBoxQuantity? quantity,
    ObjectBoxMoney? unitPrice,
    this.factor,
    ObjectBoxElement? factorElement,
    ObjectBoxMoney? net,
    ObjectBoxCodeableConcept? bodySite,
    List<ObjectBoxCodeableConcept>? subSite,
    this.noteNumber,
    List<ObjectBoxElement>? noteNumberElement,
    List<ObjectBoxClaimResponseAdjudication>? adjudication,
    List<ObjectBoxClaimResponseDetail>? detail,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.itemSequenceElement.addAll(itemSequenceElement ?? []);
    this.detailSequenceElement.addAll(detailSequenceElement ?? []);
    this.subdetailSequenceElement.addAll(subdetailSequenceElement ?? []);
    this.provider.addAll(provider ?? []);
    this.productOrService.target = productOrService;
    this.modifier.addAll(modifier ?? []);
    this.programCode.addAll(programCode ?? []);
    this.servicedDateElement.target = servicedDateElement;
    this.servicedPeriod.target = servicedPeriod;
    this.locationCodeableConcept.target = locationCodeableConcept;
    this.locationAddress.target = locationAddress;
    this.locationReference.target = locationReference;
    this.quantity.target = quantity;
    this.unitPrice.target = unitPrice;
    this.factorElement.target = factorElement;
    this.net.target = net;
    this.bodySite.target = bodySite;
    this.subSite.addAll(subSite ?? []);
    this.noteNumberElement.addAll(noteNumberElement ?? []);
    this.adjudication.addAll(adjudication ?? []);
    this.detail.addAll(detail ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<int>? itemSequence;
  ToMany<ObjectBoxElement> itemSequenceElement = ToMany<ObjectBoxElement>();
  List<int>? detailSequence;
  ToMany<ObjectBoxElement> detailSequenceElement = ToMany<ObjectBoxElement>();
  List<int>? subdetailSequence;
  ToMany<ObjectBoxElement> subdetailSequenceElement =
      ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxReference> provider = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> programCode =
      ToMany<ObjectBoxCodeableConcept>();
  String? servicedDate;
  ToOne<ObjectBoxElement> servicedDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> servicedPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxCodeableConcept> locationCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxAddress> locationAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxReference> locationReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney> unitPrice = ToOne<ObjectBoxMoney>();
  double? factor;
  ToOne<ObjectBoxElement> factorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> net = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxCodeableConcept> bodySite = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> subSite = ToMany<ObjectBoxCodeableConcept>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement> noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxClaimResponseAdjudication> adjudication =
      ToMany<ObjectBoxClaimResponseAdjudication>();
  ToMany<ObjectBoxClaimResponseDetail> detail =
      ToMany<ObjectBoxClaimResponseDetail>();
}

@Entity()
class ObjectBoxClaimResponseDetail1 {
  ObjectBoxClaimResponseDetail1({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? productOrService,
    List<ObjectBoxCodeableConcept>? modifier,
    ObjectBoxQuantity? quantity,
    ObjectBoxMoney? unitPrice,
    this.factor,
    ObjectBoxElement? factorElement,
    ObjectBoxMoney? net,
    this.noteNumber,
    List<ObjectBoxElement>? noteNumberElement,
    List<ObjectBoxClaimResponseAdjudication>? adjudication,
    List<ObjectBoxClaimResponseSubDetail>? subDetail,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.productOrService.target = productOrService;
    this.modifier.addAll(modifier ?? []);
    this.quantity.target = quantity;
    this.unitPrice.target = unitPrice;
    this.factorElement.target = factorElement;
    this.net.target = net;
    this.noteNumberElement.addAll(noteNumberElement ?? []);
    this.adjudication.addAll(adjudication ?? []);
    this.subDetail.addAll(subDetail ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney> unitPrice = ToOne<ObjectBoxMoney>();
  double? factor;
  ToOne<ObjectBoxElement> factorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> net = ToOne<ObjectBoxMoney>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement> noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxClaimResponseAdjudication> adjudication =
      ToMany<ObjectBoxClaimResponseAdjudication>();
  ToMany<ObjectBoxClaimResponseSubDetail> subDetail =
      ToMany<ObjectBoxClaimResponseSubDetail>();
}

@Entity()
class ObjectBoxClaimResponseSubDetail1 {
  ObjectBoxClaimResponseSubDetail1({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? productOrService,
    List<ObjectBoxCodeableConcept>? modifier,
    ObjectBoxQuantity? quantity,
    ObjectBoxMoney? unitPrice,
    this.factor,
    ObjectBoxElement? factorElement,
    ObjectBoxMoney? net,
    this.noteNumber,
    List<ObjectBoxElement>? noteNumberElement,
    List<ObjectBoxClaimResponseAdjudication>? adjudication,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.productOrService.target = productOrService;
    this.modifier.addAll(modifier ?? []);
    this.quantity.target = quantity;
    this.unitPrice.target = unitPrice;
    this.factorElement.target = factorElement;
    this.net.target = net;
    this.noteNumberElement.addAll(noteNumberElement ?? []);
    this.adjudication.addAll(adjudication ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney> unitPrice = ToOne<ObjectBoxMoney>();
  double? factor;
  ToOne<ObjectBoxElement> factorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> net = ToOne<ObjectBoxMoney>();
  List<int>? noteNumber;
  ToMany<ObjectBoxElement> noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxClaimResponseAdjudication> adjudication =
      ToMany<ObjectBoxClaimResponseAdjudication>();
}

@Entity()
class ObjectBoxClaimResponseTotal {
  ObjectBoxClaimResponseTotal({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? category,
    ObjectBoxMoney? amount,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.category.target = category;
    this.amount.target = amount;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxMoney> amount = ToOne<ObjectBoxMoney>();
}

@Entity()
class ObjectBoxClaimResponsePayment {
  ObjectBoxClaimResponsePayment({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxMoney? adjustment,
    ObjectBoxCodeableConcept? adjustmentReason,
    this.date,
    ObjectBoxElement? dateElement,
    ObjectBoxMoney? amount,
    ObjectBoxIdentifier? identifier,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.adjustment.target = adjustment;
    this.adjustmentReason.target = adjustmentReason;
    this.dateElement.target = dateElement;
    this.amount.target = amount;
    this.identifier.target = identifier;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxMoney> adjustment = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxCodeableConcept> adjustmentReason =
      ToOne<ObjectBoxCodeableConcept>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> amount = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
}

@Entity()
class ObjectBoxClaimResponseProcessNote {
  ObjectBoxClaimResponseProcessNote({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.number,
    ObjectBoxElement? numberElement,
    this.type,
    ObjectBoxElement? typeElement,
    required this.text,
    ObjectBoxElement? textElement,
    ObjectBoxCodeableConcept? language,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.numberElement.target = numberElement;
    this.typeElement.target = typeElement;
    this.textElement.target = textElement;
    this.language.target = language;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? number;
  ToOne<ObjectBoxElement> numberElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> language = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxClaimResponseInsurance {
  ObjectBoxClaimResponseInsurance({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.sequence,
    ObjectBoxElement? sequenceElement,
    required this.focal,
    ObjectBoxElement? focalElement,
    ObjectBoxReference? coverage,
    this.businessArrangement,
    ObjectBoxElement? businessArrangementElement,
    ObjectBoxReference? claimResponse,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.sequenceElement.target = sequenceElement;
    this.focalElement.target = focalElement;
    this.coverage.target = coverage;
    this.businessArrangementElement.target = businessArrangementElement;
    this.claimResponse.target = claimResponse;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement> sequenceElement = ToOne<ObjectBoxElement>();
  bool focal;
  ToOne<ObjectBoxElement> focalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> coverage = ToOne<ObjectBoxReference>();
  String? businessArrangement;
  ToOne<ObjectBoxElement> businessArrangementElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> claimResponse = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxClaimResponseError {
  ObjectBoxClaimResponseError({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.itemSequence,
    ObjectBoxElement? itemSequenceElement,
    this.detailSequence,
    ObjectBoxElement? detailSequenceElement,
    this.subDetailSequence,
    ObjectBoxElement? subDetailSequenceElement,
    ObjectBoxCodeableConcept? code,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.itemSequenceElement.target = itemSequenceElement;
    this.detailSequenceElement.target = detailSequenceElement;
    this.subDetailSequenceElement.target = subDetailSequenceElement;
    this.code.target = code;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? itemSequence;
  ToOne<ObjectBoxElement> itemSequenceElement = ToOne<ObjectBoxElement>();
  int? detailSequence;
  ToOne<ObjectBoxElement> detailSequenceElement = ToOne<ObjectBoxElement>();
  int? subDetailSequence;
  ToOne<ObjectBoxElement> subDetailSequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
}
