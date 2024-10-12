// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCoverageEligibilityRequest {
  ObjectBoxCoverageEligibilityRequest({
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
    this.priority,
    required this.purpose,
    this.purposeElement,
    required this.patient,
    this.servicedDate,
    this.servicedDateElement,
    this.servicedPeriod,
    required this.created,
    this.createdElement,
    this.enterer,
    this.provider,
    required this.insurer,
    this.facility,
    this.supportingInfo,
    this.insurance,
    this.item,
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
  ToOne<ObjectBoxCodeableConcept>? priority = ToOne<ObjectBoxCodeableConcept>();
  List<String> purpose;
  ToMany<ObjectBoxElement>? purposeElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  String? servicedDate;
  ToOne<ObjectBoxElement>? servicedDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? servicedPeriod = ToOne<ObjectBoxPeriod>();
  String created;
  ToOne<ObjectBoxElement>? createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? enterer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? provider = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> insurer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? facility = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCoverageEligibilityRequestSupportingInfo>? supportingInfo =
      ToMany<ObjectBoxCoverageEligibilityRequestSupportingInfo>();
  ToMany<ObjectBoxCoverageEligibilityRequestInsurance>? insurance =
      ToMany<ObjectBoxCoverageEligibilityRequestInsurance>();
  ToMany<ObjectBoxCoverageEligibilityRequestItem>? item =
      ToMany<ObjectBoxCoverageEligibilityRequestItem>();
}

@Entity()
class ObjectBoxCoverageEligibilityRequestSupportingInfo {
  ObjectBoxCoverageEligibilityRequestSupportingInfo({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    required this.information,
    this.appliesToAll,
    this.appliesToAllElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int sequence;
  ToOne<ObjectBoxElement>? sequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> information = ToOne<ObjectBoxReference>();
  bool? appliesToAll;
  ToOne<ObjectBoxElement>? appliesToAllElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCoverageEligibilityRequestInsurance {
  ObjectBoxCoverageEligibilityRequestInsurance({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.focal,
    this.focalElement,
    required this.coverage,
    this.businessArrangement,
    this.businessArrangementElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? focal;
  ToOne<ObjectBoxElement>? focalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> coverage = ToOne<ObjectBoxReference>();
  String? businessArrangement;
  ToOne<ObjectBoxElement>? businessArrangementElement =
      ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCoverageEligibilityRequestItem {
  ObjectBoxCoverageEligibilityRequestItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.supportingInfoSequence,
    this.supportingInfoSequenceElement,
    this.category,
    this.productOrService,
    this.modifier,
    this.provider,
    this.quantity,
    this.unitPrice,
    this.facility,
    this.diagnosis,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  List<int>? supportingInfoSequence;
  ToMany<ObjectBoxElement>? supportingInfoSequenceElement =
      ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? provider = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxMoney>? unitPrice = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxReference>? facility = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCoverageEligibilityRequestDiagnosis>? diagnosis =
      ToMany<ObjectBoxCoverageEligibilityRequestDiagnosis>();
  ToMany<ObjectBoxReference>? detail = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxCoverageEligibilityRequestDiagnosis {
  ObjectBoxCoverageEligibilityRequestDiagnosis({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? diagnosisCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? diagnosisReference = ToOne<ObjectBoxReference>();
}
