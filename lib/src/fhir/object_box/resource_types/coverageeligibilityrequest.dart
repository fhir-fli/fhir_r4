import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class CoverageEligibilityRequest extends Resource {
  CoverageEligibilityRequest({
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
    this.priority,
    required this.purpose,
    required this.patient,
    this.servicedDate,
    this.servicedPeriod,
    required this.created,
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
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String status;
  ToOne<CodeableConcept>? priority = ToOne<CodeableConcept>();
  List<String> purpose;
  ToOne<Reference> patient = ToOne<Reference>();
  String? servicedDate;
  ToOne<Period>? servicedPeriod = ToOne<Period>();
  String created;
  ToOne<Reference>? enterer = ToOne<Reference>();
  ToOne<Reference>? provider = ToOne<Reference>();
  ToOne<Reference> insurer = ToOne<Reference>();
  ToOne<Reference>? facility = ToOne<Reference>();
  ToMany<CoverageEligibilityRequestSupportingInfo>? supportingInfo =
      ToMany<CoverageEligibilityRequestSupportingInfo>();
  ToMany<CoverageEligibilityRequestInsurance>? insurance =
      ToMany<CoverageEligibilityRequestInsurance>();
  ToMany<CoverageEligibilityRequestItem>? item =
      ToMany<CoverageEligibilityRequestItem>();
}

@Entity()
class CoverageEligibilityRequestSupportingInfo {
  CoverageEligibilityRequestSupportingInfo({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.sequence,
    required this.information,
    this.appliesToAll,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int sequence;
  ToOne<Reference> information = ToOne<Reference>();
  bool? appliesToAll;
}

@Entity()
class CoverageEligibilityRequestInsurance {
  CoverageEligibilityRequestInsurance({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.focal,
    required this.coverage,
    this.businessArrangement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? focal;
  ToOne<Reference> coverage = ToOne<Reference>();
  String? businessArrangement;
}

@Entity()
class CoverageEligibilityRequestItem {
  CoverageEligibilityRequestItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.supportingInfoSequence,
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  List<int>? supportingInfoSequence;
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? productOrService = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? modifier = ToMany<CodeableConcept>();
  ToOne<Reference>? provider = ToOne<Reference>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Money>? unitPrice = ToOne<Money>();
  ToOne<Reference>? facility = ToOne<Reference>();
  ToMany<CoverageEligibilityRequestDiagnosis>? diagnosis =
      ToMany<CoverageEligibilityRequestDiagnosis>();
  ToMany<Reference>? detail = ToMany<Reference>();
}

@Entity()
class CoverageEligibilityRequestDiagnosis {
  CoverageEligibilityRequestDiagnosis({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? diagnosisCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? diagnosisReference = ToOne<Reference>();
}
