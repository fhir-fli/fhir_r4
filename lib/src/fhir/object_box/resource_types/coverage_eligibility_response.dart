// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCoverageEligibilityResponse {
  ObjectBoxCoverageEligibilityResponse({
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
    required this.purpose,
    List<ObjectBoxElement>? purposeElement,
    ObjectBoxReference? patient,
    this.servicedDate,
    ObjectBoxElement? servicedDateElement,
    ObjectBoxPeriod? servicedPeriod,
    required this.created,
    ObjectBoxElement? createdElement,
    ObjectBoxReference? requestor,
    ObjectBoxReference? request,
    required this.outcome,
    ObjectBoxElement? outcomeElement,
    this.disposition,
    ObjectBoxElement? dispositionElement,
    ObjectBoxReference? insurer,
    List<ObjectBoxCoverageEligibilityResponseInsurance>? insurance,
    this.preAuthRef,
    ObjectBoxElement? preAuthRefElement,
    ObjectBoxCodeableConcept? form,
    List<ObjectBoxCoverageEligibilityResponseError>? error,
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
    this.purposeElement.addAll(purposeElement ?? []);
    this.patient.target = patient;
    this.servicedDateElement.target = servicedDateElement;
    this.servicedPeriod.target = servicedPeriod;
    this.createdElement.target = createdElement;
    this.requestor.target = requestor;
    this.request.target = request;
    this.outcomeElement.target = outcomeElement;
    this.dispositionElement.target = dispositionElement;
    this.insurer.target = insurer;
    this.insurance.addAll(insurance ?? []);
    this.preAuthRefElement.target = preAuthRefElement;
    this.form.target = form;
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
  List<String> purpose;
  ToMany<ObjectBoxElement> purposeElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  String? servicedDate;
  ToOne<ObjectBoxElement> servicedDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> servicedPeriod = ToOne<ObjectBoxPeriod>();
  String created;
  ToOne<ObjectBoxElement> createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> requestor = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> request = ToOne<ObjectBoxReference>();
  String outcome;
  ToOne<ObjectBoxElement> outcomeElement = ToOne<ObjectBoxElement>();
  String? disposition;
  ToOne<ObjectBoxElement> dispositionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> insurer = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCoverageEligibilityResponseInsurance> insurance =
      ToMany<ObjectBoxCoverageEligibilityResponseInsurance>();
  String? preAuthRef;
  ToOne<ObjectBoxElement> preAuthRefElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> form = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCoverageEligibilityResponseError> error =
      ToMany<ObjectBoxCoverageEligibilityResponseError>();
}

@Entity()
class ObjectBoxCoverageEligibilityResponseInsurance {
  ObjectBoxCoverageEligibilityResponseInsurance({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? coverage,
    this.inforce,
    ObjectBoxElement? inforceElement,
    ObjectBoxPeriod? benefitPeriod,
    List<ObjectBoxCoverageEligibilityResponseItem>? item,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.coverage.target = coverage;
    this.inforceElement.target = inforceElement;
    this.benefitPeriod.target = benefitPeriod;
    this.item.addAll(item ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> coverage = ToOne<ObjectBoxReference>();
  bool? inforce;
  ToOne<ObjectBoxElement> inforceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> benefitPeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxCoverageEligibilityResponseItem> item =
      ToMany<ObjectBoxCoverageEligibilityResponseItem>();
}

@Entity()
class ObjectBoxCoverageEligibilityResponseItem {
  ObjectBoxCoverageEligibilityResponseItem({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? category,
    ObjectBoxCodeableConcept? productOrService,
    List<ObjectBoxCodeableConcept>? modifier,
    ObjectBoxReference? provider,
    this.excluded,
    ObjectBoxElement? excludedElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxCodeableConcept? network,
    ObjectBoxCodeableConcept? unit,
    ObjectBoxCodeableConcept? term,
    List<ObjectBoxCoverageEligibilityResponseBenefit>? benefit,
    this.authorizationRequired,
    ObjectBoxElement? authorizationRequiredElement,
    List<ObjectBoxCodeableConcept>? authorizationSupporting,
    this.authorizationUrl,
    ObjectBoxElement? authorizationUrlElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.category.target = category;
    this.productOrService.target = productOrService;
    this.modifier.addAll(modifier ?? []);
    this.provider.target = provider;
    this.excludedElement.target = excludedElement;
    this.nameElement.target = nameElement;
    this.descriptionElement.target = descriptionElement;
    this.network.target = network;
    this.unit.target = unit;
    this.term.target = term;
    this.benefit.addAll(benefit ?? []);
    this.authorizationRequiredElement.target = authorizationRequiredElement;
    this.authorizationSupporting.addAll(authorizationSupporting ?? []);
    this.authorizationUrlElement.target = authorizationUrlElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> productOrService =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> modifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> provider = ToOne<ObjectBoxReference>();
  bool? excluded;
  ToOne<ObjectBoxElement> excludedElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> network = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> unit = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> term = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCoverageEligibilityResponseBenefit> benefit =
      ToMany<ObjectBoxCoverageEligibilityResponseBenefit>();
  bool? authorizationRequired;
  ToOne<ObjectBoxElement> authorizationRequiredElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> authorizationSupporting =
      ToMany<ObjectBoxCodeableConcept>();
  String? authorizationUrl;
  ToOne<ObjectBoxElement> authorizationUrlElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCoverageEligibilityResponseBenefit {
  ObjectBoxCoverageEligibilityResponseBenefit({
    String? id,
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
    this.usedString,
    ObjectBoxElement? usedStringElement,
    ObjectBoxMoney? usedMoney,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.allowedUnsignedIntElement.target = allowedUnsignedIntElement;
    this.allowedStringElement.target = allowedStringElement;
    this.allowedMoney.target = allowedMoney;
    this.usedUnsignedIntElement.target = usedUnsignedIntElement;
    this.usedStringElement.target = usedStringElement;
    this.usedMoney.target = usedMoney;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
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
  String? usedString;
  ToOne<ObjectBoxElement> usedStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> usedMoney = ToOne<ObjectBoxMoney>();
}

@Entity()
class ObjectBoxCoverageEligibilityResponseError {
  ObjectBoxCoverageEligibilityResponseError({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
}
