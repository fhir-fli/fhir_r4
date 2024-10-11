import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class CoverageEligibilityResponse extends Resource {
  CoverageEligibilityResponse({
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
    required this.purpose,
    required this.patient,
    this.servicedDate,
    this.servicedPeriod,
    required this.created,
    this.requestor,
    required this.request,
    required this.outcome,
    this.disposition,
    required this.insurer,
    this.insurance,
    this.preAuthRef,
    this.form,
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
  List<String> purpose;
  ToOne<Reference> patient = ToOne<Reference>();
  String? servicedDate;
  ToOne<Period>? servicedPeriod = ToOne<Period>();
  String created;
  ToOne<Reference>? requestor = ToOne<Reference>();
  ToOne<Reference> request = ToOne<Reference>();
  String outcome;
  String? disposition;
  ToOne<Reference> insurer = ToOne<Reference>();
  ToMany<CoverageEligibilityResponseInsurance>? insurance =
      ToMany<CoverageEligibilityResponseInsurance>();
  String? preAuthRef;
  ToOne<CodeableConcept>? form = ToOne<CodeableConcept>();
  ToMany<CoverageEligibilityResponseError>? error =
      ToMany<CoverageEligibilityResponseError>();
}

@Entity()
class CoverageEligibilityResponseInsurance {
  CoverageEligibilityResponseInsurance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.coverage,
    this.inforce,
    this.benefitPeriod,
    this.item,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> coverage = ToOne<Reference>();
  bool? inforce;
  ToOne<Period>? benefitPeriod = ToOne<Period>();
  ToMany<CoverageEligibilityResponseItem>? item =
      ToMany<CoverageEligibilityResponseItem>();
}

@Entity()
class CoverageEligibilityResponseItem {
  CoverageEligibilityResponseItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.category,
    this.productOrService,
    this.modifier,
    this.provider,
    this.excluded,
    this.name,
    this.description,
    this.network,
    this.unit,
    this.term,
    this.benefit,
    this.authorizationRequired,
    this.authorizationSupporting,
    this.authorizationUrl,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? productOrService = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? modifier = ToMany<CodeableConcept>();
  ToOne<Reference>? provider = ToOne<Reference>();
  bool? excluded;
  String? name;
  String? description;
  ToOne<CodeableConcept>? network = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? unit = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? term = ToOne<CodeableConcept>();
  ToMany<CoverageEligibilityResponseBenefit>? benefit =
      ToMany<CoverageEligibilityResponseBenefit>();
  bool? authorizationRequired;
  ToMany<CodeableConcept>? authorizationSupporting = ToMany<CodeableConcept>();
  String? authorizationUrl;
}

@Entity()
class CoverageEligibilityResponseBenefit {
  CoverageEligibilityResponseBenefit({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.allowedUnsignedInt,
    this.allowedString,
    this.allowedMoney,
    this.usedUnsignedInt,
    this.usedString,
    this.usedMoney,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  int? allowedUnsignedInt;
  String? allowedString;
  ToOne<Money>? allowedMoney = ToOne<Money>();
  int? usedUnsignedInt;
  String? usedString;
  ToOne<Money>? usedMoney = ToOne<Money>();
}

@Entity()
class CoverageEligibilityResponseError {
  CoverageEligibilityResponseError({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
}
