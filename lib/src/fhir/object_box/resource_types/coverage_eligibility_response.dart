// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCoverageEligibilityResponse {
  ObjectBoxCoverageEligibilityResponse({
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
    required this.purpose,
    this.purposeElement,
    required this.patient,
    this.servicedDate,
    this.servicedDateElement,
    this.servicedPeriod,
    required this.created,
    this.createdElement,
    this.requestor,
    required this.request,
    required this.outcome,
    this.outcomeElement,
    this.disposition,
    this.dispositionElement,
    required this.insurer,
    this.insurance,
    this.preAuthRef,
    this.preAuthRefElement,
    this.form,
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
  List<String> purpose;
  ToMany<ObjectBoxElement>? purposeElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  String? servicedDate;
  ToOne<ObjectBoxElement>? servicedDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? servicedPeriod = ToOne<ObjectBoxPeriod>();
  String created;
  ToOne<ObjectBoxElement>? createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? requestor = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> request = ToOne<ObjectBoxReference>();
  String outcome;
  ToOne<ObjectBoxElement>? outcomeElement = ToOne<ObjectBoxElement>();
  String? disposition;
  ToOne<ObjectBoxElement>? dispositionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> insurer = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCoverageEligibilityResponseInsurance>? insurance =
      ToMany<ObjectBoxCoverageEligibilityResponseInsurance>();
  String? preAuthRef;
  ToOne<ObjectBoxElement>? preAuthRefElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? form = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCoverageEligibilityResponseError>? error =
      ToMany<ObjectBoxCoverageEligibilityResponseError>();
}

@Entity()
class ObjectBoxCoverageEligibilityResponseInsurance {
  ObjectBoxCoverageEligibilityResponseInsurance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.coverage,
    this.inforce,
    this.inforceElement,
    this.benefitPeriod,
    this.item,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> coverage = ToOne<ObjectBoxReference>();
  bool? inforce;
  ToOne<ObjectBoxElement>? inforceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? benefitPeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxCoverageEligibilityResponseItem>? item =
      ToMany<ObjectBoxCoverageEligibilityResponseItem>();
}

@Entity()
class ObjectBoxCoverageEligibilityResponseItem {
  ObjectBoxCoverageEligibilityResponseItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.category,
    this.productOrService,
    this.modifier,
    this.provider,
    this.excluded,
    this.excludedElement,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    this.network,
    this.unit,
    this.term,
    this.benefit,
    this.authorizationRequired,
    this.authorizationRequiredElement,
    this.authorizationSupporting,
    this.authorizationUrl,
    this.authorizationUrlElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? provider = ToOne<ObjectBoxReference>();
  bool? excluded;
  ToOne<ObjectBoxElement>? excludedElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? network = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? unit = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? term = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCoverageEligibilityResponseBenefit>? benefit =
      ToMany<ObjectBoxCoverageEligibilityResponseBenefit>();
  bool? authorizationRequired;
  ToOne<ObjectBoxElement>? authorizationRequiredElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? authorizationSupporting =
      ToMany<ObjectBoxCodeableConcept>();
  String? authorizationUrl;
  ToOne<ObjectBoxElement>? authorizationUrlElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCoverageEligibilityResponseBenefit {
  ObjectBoxCoverageEligibilityResponseBenefit({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.allowedUnsignedInt,
    this.allowedUnsignedIntElement,
    this.allowedString,
    this.allowedStringElement,
    this.allowedMoney,
    this.usedUnsignedInt,
    this.usedUnsignedIntElement,
    this.usedString,
    this.usedStringElement,
    this.usedMoney,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  int? allowedUnsignedInt;
  ToOne<ObjectBoxElement>? allowedUnsignedIntElement =
      ToOne<ObjectBoxElement>();
  String? allowedString;
  ToOne<ObjectBoxElement>? allowedStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney>? allowedMoney = ToOne<ObjectBoxMoney>();
  int? usedUnsignedInt;
  ToOne<ObjectBoxElement>? usedUnsignedIntElement = ToOne<ObjectBoxElement>();
  String? usedString;
  ToOne<ObjectBoxElement>? usedStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney>? usedMoney = ToOne<ObjectBoxMoney>();
}

@Entity()
class ObjectBoxCoverageEligibilityResponseError {
  ObjectBoxCoverageEligibilityResponseError({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
}
