// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxClaim {
  ObjectBoxClaim({
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
    ObjectBoxPeriod? billablePeriod,
    required this.created,
    ObjectBoxElement? createdElement,
    ObjectBoxReference? enterer,
    ObjectBoxReference? insurer,
    ObjectBoxReference? provider,
    ObjectBoxCodeableConcept? priority,
    ObjectBoxCodeableConcept? fundsReserve,
    List<ObjectBoxClaimRelated>? related,
    ObjectBoxReference? prescription,
    ObjectBoxReference? originalPrescription,
    ObjectBoxClaimPayee? payee,
    ObjectBoxReference? referral,
    ObjectBoxReference? facility,
    List<ObjectBoxClaimCareTeam>? careTeam,
    List<ObjectBoxClaimSupportingInfo>? supportingInfo,
    List<ObjectBoxClaimDiagnosis>? diagnosis,
    List<ObjectBoxClaimProcedure>? procedure,
    List<ObjectBoxClaimInsurance>? insurance,
    ObjectBoxClaimAccident? accident,
    List<ObjectBoxClaimItem>? item,
    ObjectBoxMoney? total,
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
    this.billablePeriod.target = billablePeriod;
    this.createdElement.target = createdElement;
    this.enterer.target = enterer;
    this.insurer.target = insurer;
    this.provider.target = provider;
    this.priority.target = priority;
    this.fundsReserve.target = fundsReserve;
    this.related.addAll(related ?? []);
    this.prescription.target = prescription;
    this.originalPrescription.target = originalPrescription;
    this.payee.target = payee;
    this.referral.target = referral;
    this.facility.target = facility;
    this.careTeam.addAll(careTeam ?? []);
    this.supportingInfo.addAll(supportingInfo ?? []);
    this.diagnosis.addAll(diagnosis ?? []);
    this.procedure.addAll(procedure ?? []);
    this.insurance.addAll(insurance ?? []);
    this.accident.target = accident;
    this.item.addAll(item ?? []);
    this.total.target = total;
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
  ToOne<ObjectBoxPeriod> billablePeriod = ToOne<ObjectBoxPeriod>();
  String created;
  ToOne<ObjectBoxElement> createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> enterer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> insurer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> provider = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> priority = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> fundsReserve =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxClaimRelated> related = ToMany<ObjectBoxClaimRelated>();
  ToOne<ObjectBoxReference> prescription = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> originalPrescription = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxClaimPayee> payee = ToOne<ObjectBoxClaimPayee>();
  ToOne<ObjectBoxReference> referral = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> facility = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxClaimCareTeam> careTeam = ToMany<ObjectBoxClaimCareTeam>();
  ToMany<ObjectBoxClaimSupportingInfo> supportingInfo =
      ToMany<ObjectBoxClaimSupportingInfo>();
  ToMany<ObjectBoxClaimDiagnosis> diagnosis = ToMany<ObjectBoxClaimDiagnosis>();
  ToMany<ObjectBoxClaimProcedure> procedure = ToMany<ObjectBoxClaimProcedure>();
  ToMany<ObjectBoxClaimInsurance> insurance = ToMany<ObjectBoxClaimInsurance>();
  ToOne<ObjectBoxClaimAccident> accident = ToOne<ObjectBoxClaimAccident>();
  ToMany<ObjectBoxClaimItem> item = ToMany<ObjectBoxClaimItem>();
  ToOne<ObjectBoxMoney> total = ToOne<ObjectBoxMoney>();
}

@Entity()
class ObjectBoxClaimRelated {
  ObjectBoxClaimRelated({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? claim,
    ObjectBoxCodeableConcept? relationship,
    ObjectBoxIdentifier? reference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.claim.target = claim;
    this.relationship.target = relationship;
    this.reference.target = reference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> claim = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> relationship =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxIdentifier> reference = ToOne<ObjectBoxIdentifier>();
}

@Entity()
class ObjectBoxClaimPayee {
  ObjectBoxClaimPayee({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxReference? party,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.party.target = party;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> party = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxClaimCareTeam {
  ObjectBoxClaimCareTeam({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.sequence,
    ObjectBoxElement? sequenceElement,
    ObjectBoxReference? provider,
    this.responsible,
    ObjectBoxElement? responsibleElement,
    ObjectBoxCodeableConcept? role,
    ObjectBoxCodeableConcept? qualification,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.sequenceElement.target = sequenceElement;
    this.provider.target = provider;
    this.responsibleElement.target = responsibleElement;
    this.role.target = role;
    this.qualification.target = qualification;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement> sequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> provider = ToOne<ObjectBoxReference>();
  bool? responsible;
  ToOne<ObjectBoxElement> responsibleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> role = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> qualification =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxClaimSupportingInfo {
  ObjectBoxClaimSupportingInfo({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.sequence,
    ObjectBoxElement? sequenceElement,
    ObjectBoxCodeableConcept? category,
    ObjectBoxCodeableConcept? code,
    this.timingDate,
    ObjectBoxElement? timingDateElement,
    ObjectBoxPeriod? timingPeriod,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    this.valueString,
    ObjectBoxElement? valueStringElement,
    ObjectBoxQuantity? valueQuantity,
    ObjectBoxAttachment? valueAttachment,
    ObjectBoxReference? valueReference,
    ObjectBoxCodeableConcept? reason,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.sequenceElement.target = sequenceElement;
    this.category.target = category;
    this.code.target = code;
    this.timingDateElement.target = timingDateElement;
    this.timingPeriod.target = timingPeriod;
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueStringElement.target = valueStringElement;
    this.valueQuantity.target = valueQuantity;
    this.valueAttachment.target = valueAttachment;
    this.valueReference.target = valueReference;
    this.reason.target = reason;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement> sequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String? timingDate;
  ToOne<ObjectBoxElement> timingDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> timingPeriod = ToOne<ObjectBoxPeriod>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement> valueStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxAttachment> valueAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxReference> valueReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> reason = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxClaimDiagnosis {
  ObjectBoxClaimDiagnosis({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.sequence,
    ObjectBoxElement? sequenceElement,
    ObjectBoxCodeableConcept? diagnosisCodeableConcept,
    ObjectBoxReference? diagnosisReference,
    List<ObjectBoxCodeableConcept>? type,
    ObjectBoxCodeableConcept? onAdmission,
    ObjectBoxCodeableConcept? packageCode,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.sequenceElement.target = sequenceElement;
    this.diagnosisCodeableConcept.target = diagnosisCodeableConcept;
    this.diagnosisReference.target = diagnosisReference;
    this.type.addAll(type ?? []);
    this.onAdmission.target = onAdmission;
    this.packageCode.target = packageCode;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement> sequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> diagnosisCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> diagnosisReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> onAdmission =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> packageCode =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxClaimProcedure {
  ObjectBoxClaimProcedure({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.sequence,
    ObjectBoxElement? sequenceElement,
    List<ObjectBoxCodeableConcept>? type,
    this.date,
    ObjectBoxElement? dateElement,
    ObjectBoxCodeableConcept? procedureCodeableConcept,
    ObjectBoxReference? procedureReference,
    List<ObjectBoxReference>? udi,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.sequenceElement.target = sequenceElement;
    this.type.addAll(type ?? []);
    this.dateElement.target = dateElement;
    this.procedureCodeableConcept.target = procedureCodeableConcept;
    this.procedureReference.target = procedureReference;
    this.udi.addAll(udi ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement> sequenceElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> procedureCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> procedureReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> udi = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxClaimInsurance {
  ObjectBoxClaimInsurance({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.sequence,
    ObjectBoxElement? sequenceElement,
    required this.focal,
    ObjectBoxElement? focalElement,
    ObjectBoxIdentifier? identifier,
    ObjectBoxReference? coverage,
    this.businessArrangement,
    ObjectBoxElement? businessArrangementElement,
    this.preAuthRef,
    List<ObjectBoxElement>? preAuthRefElement,
    ObjectBoxReference? claimResponse,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.sequenceElement.target = sequenceElement;
    this.focalElement.target = focalElement;
    this.identifier.target = identifier;
    this.coverage.target = coverage;
    this.businessArrangementElement.target = businessArrangementElement;
    this.preAuthRefElement.addAll(preAuthRefElement ?? []);
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
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference> coverage = ToOne<ObjectBoxReference>();
  String? businessArrangement;
  ToOne<ObjectBoxElement> businessArrangementElement =
      ToOne<ObjectBoxElement>();
  List<String>? preAuthRef;
  ToMany<ObjectBoxElement> preAuthRefElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxReference> claimResponse = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxClaimAccident {
  ObjectBoxClaimAccident({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.date,
    ObjectBoxElement? dateElement,
    ObjectBoxCodeableConcept? type,
    ObjectBoxAddress? locationAddress,
    ObjectBoxReference? locationReference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.dateElement.target = dateElement;
    this.type.target = type;
    this.locationAddress.target = locationAddress;
    this.locationReference.target = locationReference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxAddress> locationAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxReference> locationReference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxClaimItem {
  ObjectBoxClaimItem({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.sequence,
    ObjectBoxElement? sequenceElement,
    this.careTeamSequence,
    List<ObjectBoxElement>? careTeamSequenceElement,
    this.diagnosisSequence,
    List<ObjectBoxElement>? diagnosisSequenceElement,
    this.procedureSequence,
    List<ObjectBoxElement>? procedureSequenceElement,
    this.informationSequence,
    List<ObjectBoxElement>? informationSequenceElement,
    ObjectBoxCodeableConcept? revenue,
    ObjectBoxCodeableConcept? category,
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
    List<ObjectBoxReference>? udi,
    ObjectBoxCodeableConcept? bodySite,
    List<ObjectBoxCodeableConcept>? subSite,
    List<ObjectBoxReference>? encounter,
    List<ObjectBoxClaimDetail>? detail,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.sequenceElement.target = sequenceElement;
    this.careTeamSequenceElement.addAll(careTeamSequenceElement ?? []);
    this.diagnosisSequenceElement.addAll(diagnosisSequenceElement ?? []);
    this.procedureSequenceElement.addAll(procedureSequenceElement ?? []);
    this.informationSequenceElement.addAll(informationSequenceElement ?? []);
    this.revenue.target = revenue;
    this.category.target = category;
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
    this.udi.addAll(udi ?? []);
    this.bodySite.target = bodySite;
    this.subSite.addAll(subSite ?? []);
    this.encounter.addAll(encounter ?? []);
    this.detail.addAll(detail ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement> sequenceElement = ToOne<ObjectBoxElement>();
  List<int>? careTeamSequence;
  ToMany<ObjectBoxElement> careTeamSequenceElement = ToMany<ObjectBoxElement>();
  List<int>? diagnosisSequence;
  ToMany<ObjectBoxElement> diagnosisSequenceElement =
      ToMany<ObjectBoxElement>();
  List<int>? procedureSequence;
  ToMany<ObjectBoxElement> procedureSequenceElement =
      ToMany<ObjectBoxElement>();
  List<int>? informationSequence;
  ToMany<ObjectBoxElement> informationSequenceElement =
      ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> revenue = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
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
  ToMany<ObjectBoxReference> udi = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> bodySite = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> subSite = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> encounter = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxClaimDetail> detail = ToMany<ObjectBoxClaimDetail>();
}

@Entity()
class ObjectBoxClaimDetail {
  ObjectBoxClaimDetail({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.sequence,
    ObjectBoxElement? sequenceElement,
    ObjectBoxCodeableConcept? revenue,
    ObjectBoxCodeableConcept? category,
    ObjectBoxCodeableConcept? productOrService,
    List<ObjectBoxCodeableConcept>? modifier,
    List<ObjectBoxCodeableConcept>? programCode,
    ObjectBoxQuantity? quantity,
    ObjectBoxMoney? unitPrice,
    this.factor,
    ObjectBoxElement? factorElement,
    ObjectBoxMoney? net,
    List<ObjectBoxReference>? udi,
    List<ObjectBoxClaimSubDetail>? subDetail,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.sequenceElement.target = sequenceElement;
    this.revenue.target = revenue;
    this.category.target = category;
    this.productOrService.target = productOrService;
    this.modifier.addAll(modifier ?? []);
    this.programCode.addAll(programCode ?? []);
    this.quantity.target = quantity;
    this.unitPrice.target = unitPrice;
    this.factorElement.target = factorElement;
    this.net.target = net;
    this.udi.addAll(udi ?? []);
    this.subDetail.addAll(subDetail ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement> sequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> revenue = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> programCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney> unitPrice = ToOne<ObjectBoxMoney>();
  double? factor;
  ToOne<ObjectBoxElement> factorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> net = ToOne<ObjectBoxMoney>();
  ToMany<ObjectBoxReference> udi = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxClaimSubDetail> subDetail = ToMany<ObjectBoxClaimSubDetail>();
}

@Entity()
class ObjectBoxClaimSubDetail {
  ObjectBoxClaimSubDetail({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.sequence,
    ObjectBoxElement? sequenceElement,
    ObjectBoxCodeableConcept? revenue,
    ObjectBoxCodeableConcept? category,
    ObjectBoxCodeableConcept? productOrService,
    List<ObjectBoxCodeableConcept>? modifier,
    List<ObjectBoxCodeableConcept>? programCode,
    ObjectBoxQuantity? quantity,
    ObjectBoxMoney? unitPrice,
    this.factor,
    ObjectBoxElement? factorElement,
    ObjectBoxMoney? net,
    List<ObjectBoxReference>? udi,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.sequenceElement.target = sequenceElement;
    this.revenue.target = revenue;
    this.category.target = category;
    this.productOrService.target = productOrService;
    this.modifier.addAll(modifier ?? []);
    this.programCode.addAll(programCode ?? []);
    this.quantity.target = quantity;
    this.unitPrice.target = unitPrice;
    this.factorElement.target = factorElement;
    this.net.target = net;
    this.udi.addAll(udi ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement> sequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> revenue = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> programCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney> unitPrice = ToOne<ObjectBoxMoney>();
  double? factor;
  ToOne<ObjectBoxElement> factorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> net = ToOne<ObjectBoxMoney>();
  ToMany<ObjectBoxReference> udi = ToMany<ObjectBoxReference>();
}
