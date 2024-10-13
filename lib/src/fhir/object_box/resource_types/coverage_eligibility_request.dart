// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCoverageEligibilityRequest {
  ObjectBoxCoverageEligibilityRequest({
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
    ObjectBoxCodeableConcept? priority,
    required this.purpose,
    List<ObjectBoxElement>? purposeElement,
    ObjectBoxReference? patient,
    this.servicedDate,
    ObjectBoxElement? servicedDateElement,
    ObjectBoxPeriod? servicedPeriod,
    required this.created,
    ObjectBoxElement? createdElement,
    ObjectBoxReference? enterer,
    ObjectBoxReference? provider,
    ObjectBoxReference? insurer,
    ObjectBoxReference? facility,
    List<ObjectBoxCoverageEligibilityRequestSupportingInfo>? supportingInfo,
    List<ObjectBoxCoverageEligibilityRequestInsurance>? insurance,
    List<ObjectBoxCoverageEligibilityRequestItem>? item,
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
    this.priority.target = priority;
    this.purposeElement.addAll(purposeElement ?? []);
    this.patient.target = patient;
    this.servicedDateElement.target = servicedDateElement;
    this.servicedPeriod.target = servicedPeriod;
    this.createdElement.target = createdElement;
    this.enterer.target = enterer;
    this.provider.target = provider;
    this.insurer.target = insurer;
    this.facility.target = facility;
    this.supportingInfo.addAll(supportingInfo ?? []);
    this.insurance.addAll(insurance ?? []);
    this.item.addAll(item ?? []);
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
  ToOne<ObjectBoxCodeableConcept> priority = ToOne<ObjectBoxCodeableConcept>();
  List<String> purpose;
  ToMany<ObjectBoxElement> purposeElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  String? servicedDate;
  ToOne<ObjectBoxElement> servicedDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> servicedPeriod = ToOne<ObjectBoxPeriod>();
  String created;
  ToOne<ObjectBoxElement> createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> enterer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> provider = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> insurer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> facility = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCoverageEligibilityRequestSupportingInfo> supportingInfo =
      ToMany<ObjectBoxCoverageEligibilityRequestSupportingInfo>();
  ToMany<ObjectBoxCoverageEligibilityRequestInsurance> insurance =
      ToMany<ObjectBoxCoverageEligibilityRequestInsurance>();
  ToMany<ObjectBoxCoverageEligibilityRequestItem> item =
      ToMany<ObjectBoxCoverageEligibilityRequestItem>();
}

@Entity()
class ObjectBoxCoverageEligibilityRequestSupportingInfo {
  ObjectBoxCoverageEligibilityRequestSupportingInfo({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.sequence,
    ObjectBoxElement? sequenceElement,
    ObjectBoxReference? information,
    this.appliesToAll,
    ObjectBoxElement? appliesToAllElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.sequenceElement.target = sequenceElement;
    this.information.target = information;
    this.appliesToAllElement.target = appliesToAllElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement> sequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> information = ToOne<ObjectBoxReference>();
  bool? appliesToAll;
  ToOne<ObjectBoxElement> appliesToAllElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCoverageEligibilityRequestInsurance {
  ObjectBoxCoverageEligibilityRequestInsurance({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.focal,
    ObjectBoxElement? focalElement,
    ObjectBoxReference? coverage,
    this.businessArrangement,
    ObjectBoxElement? businessArrangementElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.focalElement.target = focalElement;
    this.coverage.target = coverage;
    this.businessArrangementElement.target = businessArrangementElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? focal;
  ToOne<ObjectBoxElement> focalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> coverage = ToOne<ObjectBoxReference>();
  String? businessArrangement;
  ToOne<ObjectBoxElement> businessArrangementElement =
      ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCoverageEligibilityRequestItem {
  ObjectBoxCoverageEligibilityRequestItem({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.supportingInfoSequence,
    List<ObjectBoxElement>? supportingInfoSequenceElement,
    ObjectBoxCodeableConcept? category,
    ObjectBoxCodeableConcept? productOrService,
    List<ObjectBoxCodeableConcept>? modifier,
    ObjectBoxReference? provider,
    ObjectBoxQuantity? quantity,
    ObjectBoxMoney? unitPrice,
    ObjectBoxReference? facility,
    List<ObjectBoxCoverageEligibilityRequestDiagnosis>? diagnosis,
    List<ObjectBoxReference>? detail,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this
        .supportingInfoSequenceElement
        .addAll(supportingInfoSequenceElement ?? []);
    this.category.target = category;
    this.productOrService.target = productOrService;
    this.modifier.addAll(modifier ?? []);
    this.provider.target = provider;
    this.quantity.target = quantity;
    this.unitPrice.target = unitPrice;
    this.facility.target = facility;
    this.diagnosis.addAll(diagnosis ?? []);
    this.detail.addAll(detail ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<int>? supportingInfoSequence;
  ToMany<ObjectBoxElement> supportingInfoSequenceElement =
      ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> provider = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney> unitPrice = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxReference> facility = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCoverageEligibilityRequestDiagnosis> diagnosis =
      ToMany<ObjectBoxCoverageEligibilityRequestDiagnosis>();
  ToMany<ObjectBoxReference> detail = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxCoverageEligibilityRequestDiagnosis {
  ObjectBoxCoverageEligibilityRequestDiagnosis({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? diagnosisCodeableConcept,
    ObjectBoxReference? diagnosisReference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.diagnosisCodeableConcept.target = diagnosisCodeableConcept;
    this.diagnosisReference.target = diagnosisReference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> diagnosisCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> diagnosisReference = ToOne<ObjectBoxReference>();
}
