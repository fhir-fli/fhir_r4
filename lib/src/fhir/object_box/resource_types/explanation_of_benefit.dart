// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxExplanationOfBenefit {
  ObjectBoxExplanationOfBenefit({
    this.id,
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
    ObjectBoxCodeableConcept? fundsReserveRequested,
    ObjectBoxCodeableConcept? fundsReserve,
    List<ObjectBoxExplanationOfBenefitRelated>? related,
    ObjectBoxReference? prescription,
    ObjectBoxReference? originalPrescription,
    ObjectBoxExplanationOfBenefitPayee? payee,
    ObjectBoxReference? referral,
    ObjectBoxReference? facility,
    ObjectBoxReference? claim,
    ObjectBoxReference? claimResponse,
    required this.outcome,
    ObjectBoxElement? outcomeElement,
    this.disposition,
    ObjectBoxElement? dispositionElement,
    this.preAuthRef,
    List<ObjectBoxElement>? preAuthRefElement,
    List<ObjectBoxPeriod>? preAuthRefPeriod,
    List<ObjectBoxExplanationOfBenefitCareTeam>? careTeam,
    List<ObjectBoxExplanationOfBenefitSupportingInfo>? supportingInfo,
    List<ObjectBoxExplanationOfBenefitDiagnosis>? diagnosis,
    List<ObjectBoxExplanationOfBenefitProcedure>? procedure,
    this.precedence,
    ObjectBoxElement? precedenceElement,
    List<ObjectBoxExplanationOfBenefitInsurance>? insurance,
    ObjectBoxExplanationOfBenefitAccident? accident,
    List<ObjectBoxExplanationOfBenefitItem>? item,
    List<ObjectBoxExplanationOfBenefitAddItem>? addItem,
    List<ObjectBoxExplanationOfBenefitAdjudication>? adjudication,
    List<ObjectBoxExplanationOfBenefitTotal>? total,
    ObjectBoxExplanationOfBenefitPayment? payment,
    ObjectBoxCodeableConcept? formCode,
    ObjectBoxAttachment? form,
    List<ObjectBoxExplanationOfBenefitProcessNote>? processNote,
    ObjectBoxPeriod? benefitPeriod,
    List<ObjectBoxExplanationOfBenefitBenefitBalance>? benefitBalance,
  }) {
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
    this.fundsReserveRequested.target = fundsReserveRequested;
    this.fundsReserve.target = fundsReserve;
    this.related.addAll(related ?? []);
    this.prescription.target = prescription;
    this.originalPrescription.target = originalPrescription;
    this.payee.target = payee;
    this.referral.target = referral;
    this.facility.target = facility;
    this.claim.target = claim;
    this.claimResponse.target = claimResponse;
    this.outcomeElement.target = outcomeElement;
    this.dispositionElement.target = dispositionElement;
    this.preAuthRefElement.addAll(preAuthRefElement ?? []);
    this.preAuthRefPeriod.addAll(preAuthRefPeriod ?? []);
    this.careTeam.addAll(careTeam ?? []);
    this.supportingInfo.addAll(supportingInfo ?? []);
    this.diagnosis.addAll(diagnosis ?? []);
    this.procedure.addAll(procedure ?? []);
    this.precedenceElement.target = precedenceElement;
    this.insurance.addAll(insurance ?? []);
    this.accident.target = accident;
    this.item.addAll(item ?? []);
    this.addItem.addAll(addItem ?? []);
    this.adjudication.addAll(adjudication ?? []);
    this.total.addAll(total ?? []);
    this.payment.target = payment;
    this.formCode.target = formCode;
    this.form.target = form;
    this.processNote.addAll(processNote ?? []);
    this.benefitPeriod.target = benefitPeriod;
    this.benefitBalance.addAll(benefitBalance ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  ToOne<ObjectBoxCodeableConcept> fundsReserveRequested =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> fundsReserve =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxExplanationOfBenefitRelated> related =
      ToMany<ObjectBoxExplanationOfBenefitRelated>();
  ToOne<ObjectBoxReference> prescription = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> originalPrescription = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxExplanationOfBenefitPayee> payee =
      ToOne<ObjectBoxExplanationOfBenefitPayee>();
  ToOne<ObjectBoxReference> referral = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> facility = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> claim = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> claimResponse = ToOne<ObjectBoxReference>();
  String outcome;
  ToOne<ObjectBoxElement> outcomeElement = ToOne<ObjectBoxElement>();
  String? disposition;
  ToOne<ObjectBoxElement> dispositionElement = ToOne<ObjectBoxElement>();
  List<String>? preAuthRef;
  ToMany<ObjectBoxElement> preAuthRefElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxPeriod> preAuthRefPeriod = ToMany<ObjectBoxPeriod>();
  ToMany<ObjectBoxExplanationOfBenefitCareTeam> careTeam =
      ToMany<ObjectBoxExplanationOfBenefitCareTeam>();
  ToMany<ObjectBoxExplanationOfBenefitSupportingInfo> supportingInfo =
      ToMany<ObjectBoxExplanationOfBenefitSupportingInfo>();
  ToMany<ObjectBoxExplanationOfBenefitDiagnosis> diagnosis =
      ToMany<ObjectBoxExplanationOfBenefitDiagnosis>();
  ToMany<ObjectBoxExplanationOfBenefitProcedure> procedure =
      ToMany<ObjectBoxExplanationOfBenefitProcedure>();
  int? precedence;
  ToOne<ObjectBoxElement> precedenceElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxExplanationOfBenefitInsurance> insurance =
      ToMany<ObjectBoxExplanationOfBenefitInsurance>();
  ToOne<ObjectBoxExplanationOfBenefitAccident> accident =
      ToOne<ObjectBoxExplanationOfBenefitAccident>();
  ToMany<ObjectBoxExplanationOfBenefitItem> item =
      ToMany<ObjectBoxExplanationOfBenefitItem>();
  ToMany<ObjectBoxExplanationOfBenefitAddItem> addItem =
      ToMany<ObjectBoxExplanationOfBenefitAddItem>();
  ToMany<ObjectBoxExplanationOfBenefitAdjudication> adjudication =
      ToMany<ObjectBoxExplanationOfBenefitAdjudication>();
  ToMany<ObjectBoxExplanationOfBenefitTotal> total =
      ToMany<ObjectBoxExplanationOfBenefitTotal>();
  ToOne<ObjectBoxExplanationOfBenefitPayment> payment =
      ToOne<ObjectBoxExplanationOfBenefitPayment>();
  ToOne<ObjectBoxCodeableConcept> formCode = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxAttachment> form = ToOne<ObjectBoxAttachment>();
  ToMany<ObjectBoxExplanationOfBenefitProcessNote> processNote =
      ToMany<ObjectBoxExplanationOfBenefitProcessNote>();
  ToOne<ObjectBoxPeriod> benefitPeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxExplanationOfBenefitBenefitBalance> benefitBalance =
      ToMany<ObjectBoxExplanationOfBenefitBenefitBalance>();
}

@Entity()
class ObjectBoxExplanationOfBenefitRelated {
  ObjectBoxExplanationOfBenefitRelated({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? claim,
    ObjectBoxCodeableConcept? relationship,
    ObjectBoxIdentifier? reference,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.claim.target = claim;
    this.relationship.target = relationship;
    this.reference.target = reference;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> claim = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> relationship =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxIdentifier> reference = ToOne<ObjectBoxIdentifier>();
}

@Entity()
class ObjectBoxExplanationOfBenefitPayee {
  ObjectBoxExplanationOfBenefitPayee({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxReference? party,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.party.target = party;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> party = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxExplanationOfBenefitCareTeam {
  ObjectBoxExplanationOfBenefitCareTeam({
    this.id,
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
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
class ObjectBoxExplanationOfBenefitSupportingInfo {
  ObjectBoxExplanationOfBenefitSupportingInfo({
    this.id,
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
    ObjectBoxCoding? reason,
  }) {
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
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  ToOne<ObjectBoxCoding> reason = ToOne<ObjectBoxCoding>();
}

@Entity()
class ObjectBoxExplanationOfBenefitDiagnosis {
  ObjectBoxExplanationOfBenefitDiagnosis({
    this.id,
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
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
class ObjectBoxExplanationOfBenefitProcedure {
  ObjectBoxExplanationOfBenefitProcedure({
    this.id,
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
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
class ObjectBoxExplanationOfBenefitInsurance {
  ObjectBoxExplanationOfBenefitInsurance({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.focal,
    ObjectBoxElement? focalElement,
    ObjectBoxReference? coverage,
    this.preAuthRef,
    List<ObjectBoxElement>? preAuthRefElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.focalElement.target = focalElement;
    this.coverage.target = coverage;
    this.preAuthRefElement.addAll(preAuthRefElement ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool focal;
  ToOne<ObjectBoxElement> focalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> coverage = ToOne<ObjectBoxReference>();
  List<String>? preAuthRef;
  ToMany<ObjectBoxElement> preAuthRefElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxExplanationOfBenefitAccident {
  ObjectBoxExplanationOfBenefitAccident({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.date,
    ObjectBoxElement? dateElement,
    ObjectBoxCodeableConcept? type,
    ObjectBoxAddress? locationAddress,
    ObjectBoxReference? locationReference,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.dateElement.target = dateElement;
    this.type.target = type;
    this.locationAddress.target = locationAddress;
    this.locationReference.target = locationReference;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxAddress> locationAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxReference> locationReference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxExplanationOfBenefitItem {
  ObjectBoxExplanationOfBenefitItem({
    this.id,
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
    this.noteNumber,
    List<ObjectBoxElement>? noteNumberElement,
    List<ObjectBoxExplanationOfBenefitAdjudication>? adjudication,
    List<ObjectBoxExplanationOfBenefitDetail>? detail,
  }) {
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
    this.noteNumberElement.addAll(noteNumberElement ?? []);
    this.adjudication.addAll(adjudication ?? []);
    this.detail.addAll(detail ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  List<int>? noteNumber;
  ToMany<ObjectBoxElement> noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxExplanationOfBenefitAdjudication> adjudication =
      ToMany<ObjectBoxExplanationOfBenefitAdjudication>();
  ToMany<ObjectBoxExplanationOfBenefitDetail> detail =
      ToMany<ObjectBoxExplanationOfBenefitDetail>();
}

@Entity()
class ObjectBoxExplanationOfBenefitAdjudication {
  ObjectBoxExplanationOfBenefitAdjudication({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? category,
    ObjectBoxCodeableConcept? reason,
    ObjectBoxMoney? amount,
    this.value,
    ObjectBoxElement? valueElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.category.target = category;
    this.reason.target = reason;
    this.amount.target = amount;
    this.valueElement.target = valueElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
class ObjectBoxExplanationOfBenefitDetail {
  ObjectBoxExplanationOfBenefitDetail({
    this.id,
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
    this.noteNumber,
    List<ObjectBoxElement>? noteNumberElement,
    List<ObjectBoxExplanationOfBenefitAdjudication>? adjudication,
    List<ObjectBoxExplanationOfBenefitSubDetail>? subDetail,
  }) {
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
    this.noteNumberElement.addAll(noteNumberElement ?? []);
    this.adjudication.addAll(adjudication ?? []);
    this.subDetail.addAll(subDetail ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  List<int>? noteNumber;
  ToMany<ObjectBoxElement> noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxExplanationOfBenefitAdjudication> adjudication =
      ToMany<ObjectBoxExplanationOfBenefitAdjudication>();
  ToMany<ObjectBoxExplanationOfBenefitSubDetail> subDetail =
      ToMany<ObjectBoxExplanationOfBenefitSubDetail>();
}

@Entity()
class ObjectBoxExplanationOfBenefitSubDetail {
  ObjectBoxExplanationOfBenefitSubDetail({
    this.id,
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
    this.noteNumber,
    List<ObjectBoxElement>? noteNumberElement,
    List<ObjectBoxExplanationOfBenefitAdjudication>? adjudication,
  }) {
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
    this.noteNumberElement.addAll(noteNumberElement ?? []);
    this.adjudication.addAll(adjudication ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  List<int>? noteNumber;
  ToMany<ObjectBoxElement> noteNumberElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxExplanationOfBenefitAdjudication> adjudication =
      ToMany<ObjectBoxExplanationOfBenefitAdjudication>();
}

@Entity()
class ObjectBoxExplanationOfBenefitAddItem {
  ObjectBoxExplanationOfBenefitAddItem({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.itemSequence,
    List<ObjectBoxElement>? itemSequenceElement,
    this.detailSequence,
    List<ObjectBoxElement>? detailSequenceElement,
    this.subDetailSequence,
    List<ObjectBoxElement>? subDetailSequenceElement,
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
    List<ObjectBoxExplanationOfBenefitAdjudication>? adjudication,
    List<ObjectBoxExplanationOfBenefitDetail>? detail,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.itemSequenceElement.addAll(itemSequenceElement ?? []);
    this.detailSequenceElement.addAll(detailSequenceElement ?? []);
    this.subDetailSequenceElement.addAll(subDetailSequenceElement ?? []);
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
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<int>? itemSequence;
  ToMany<ObjectBoxElement> itemSequenceElement = ToMany<ObjectBoxElement>();
  List<int>? detailSequence;
  ToMany<ObjectBoxElement> detailSequenceElement = ToMany<ObjectBoxElement>();
  List<int>? subDetailSequence;
  ToMany<ObjectBoxElement> subDetailSequenceElement =
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
  ToMany<ObjectBoxExplanationOfBenefitAdjudication> adjudication =
      ToMany<ObjectBoxExplanationOfBenefitAdjudication>();
  ToMany<ObjectBoxExplanationOfBenefitDetail> detail =
      ToMany<ObjectBoxExplanationOfBenefitDetail>();
}

@Entity()
class ObjectBoxExplanationOfBenefitDetail1 {
  ObjectBoxExplanationOfBenefitDetail1({
    this.id,
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
    List<ObjectBoxExplanationOfBenefitAdjudication>? adjudication,
    List<ObjectBoxExplanationOfBenefitSubDetail>? subDetail,
  }) {
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
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  ToMany<ObjectBoxExplanationOfBenefitAdjudication> adjudication =
      ToMany<ObjectBoxExplanationOfBenefitAdjudication>();
  ToMany<ObjectBoxExplanationOfBenefitSubDetail> subDetail =
      ToMany<ObjectBoxExplanationOfBenefitSubDetail>();
}

@Entity()
class ObjectBoxExplanationOfBenefitSubDetail1 {
  ObjectBoxExplanationOfBenefitSubDetail1({
    this.id,
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
    List<ObjectBoxExplanationOfBenefitAdjudication>? adjudication,
  }) {
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
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  ToMany<ObjectBoxExplanationOfBenefitAdjudication> adjudication =
      ToMany<ObjectBoxExplanationOfBenefitAdjudication>();
}

@Entity()
class ObjectBoxExplanationOfBenefitTotal {
  ObjectBoxExplanationOfBenefitTotal({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? category,
    ObjectBoxMoney? amount,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.category.target = category;
    this.amount.target = amount;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxMoney> amount = ToOne<ObjectBoxMoney>();
}

@Entity()
class ObjectBoxExplanationOfBenefitPayment {
  ObjectBoxExplanationOfBenefitPayment({
    this.id,
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
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
class ObjectBoxExplanationOfBenefitProcessNote {
  ObjectBoxExplanationOfBenefitProcessNote({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.number,
    ObjectBoxElement? numberElement,
    this.type,
    ObjectBoxElement? typeElement,
    this.text,
    ObjectBoxElement? textElement,
    ObjectBoxCodeableConcept? language,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.numberElement.target = numberElement;
    this.typeElement.target = typeElement;
    this.textElement.target = textElement;
    this.language.target = language;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? number;
  ToOne<ObjectBoxElement> numberElement = ToOne<ObjectBoxElement>();
  String? type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> language = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxExplanationOfBenefitBenefitBalance {
  ObjectBoxExplanationOfBenefitBenefitBalance({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? category,
    this.excluded,
    ObjectBoxElement? excludedElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxCodeableConcept? network,
    ObjectBoxCodeableConcept? unit,
    ObjectBoxCodeableConcept? term,
    List<ObjectBoxExplanationOfBenefitFinancial>? financial,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.category.target = category;
    this.excludedElement.target = excludedElement;
    this.nameElement.target = nameElement;
    this.descriptionElement.target = descriptionElement;
    this.network.target = network;
    this.unit.target = unit;
    this.term.target = term;
    this.financial.addAll(financial ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  bool? excluded;
  ToOne<ObjectBoxElement> excludedElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> network = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> unit = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> term = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxExplanationOfBenefitFinancial> financial =
      ToMany<ObjectBoxExplanationOfBenefitFinancial>();
}

@Entity()
class ObjectBoxExplanationOfBenefitFinancial {
  ObjectBoxExplanationOfBenefitFinancial({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    this.allowedUnsignedInt,
    ObjectBoxElement? allowedUnsignedIntElement,
    this.allowedString,
    ObjectBoxElement? allowedStringElement,
    ObjectBoxMoney? allowedMoney,
    this.usedUnsignedInt,
    ObjectBoxElement? usedUnsignedIntElement,
    ObjectBoxMoney? usedMoney,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.allowedUnsignedIntElement.target = allowedUnsignedIntElement;
    this.allowedStringElement.target = allowedStringElement;
    this.allowedMoney.target = allowedMoney;
    this.usedUnsignedIntElement.target = usedUnsignedIntElement;
    this.usedMoney.target = usedMoney;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  int? allowedUnsignedInt;
  ToOne<ObjectBoxElement> allowedUnsignedIntElement = ToOne<ObjectBoxElement>();
  String? allowedString;
  ToOne<ObjectBoxElement> allowedStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> allowedMoney = ToOne<ObjectBoxMoney>();
  int? usedUnsignedInt;
  ToOne<ObjectBoxElement> usedUnsignedIntElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> usedMoney = ToOne<ObjectBoxMoney>();
}
