import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class CoverageEligibilityResponse extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final List<FhirCode> purpose;
  final List<Element>? purposeElement;
  final Reference patient;
  final FhirDate? servicedDate;
  final Element? servicedDateElement;
  final Period? servicedPeriod;
  final FhirDateTime created;
  final Element? createdElement;
  final Reference? requestor;
  final Reference request;
  final FhirCode outcome;
  final Element? outcomeElement;
  final FhirString? disposition;
  final Element? dispositionElement;
  final Reference insurer;
  final List<CoverageEligibilityResponseInsurance>? insurance;
  final FhirString? preAuthRef;
  final Element? preAuthRefElement;
  final CodeableConcept? form;
  final List<CoverageEligibilityResponseError>? error;

  CoverageEligibilityResponse({
    super.id,
    super.meta,
    super.implicitRules,
super.implicitRulesElement,
    super.language,
super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
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
  }) : super(resourceType: R4ResourceType.CoverageEligibilityResponse);

@override
CoverageEligibilityResponse clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CoverageEligibilityResponseInsurance extends BackboneElement {
  final Reference coverage;
  final FhirBoolean? inforce;
  final Element? inforceElement;
  final Period? benefitPeriod;
  final List<CoverageEligibilityResponseItem>? item;

  CoverageEligibilityResponseInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.coverage,
    this.inforce,
this.inforceElement,
    this.benefitPeriod,
    this.item,
  });

@override
CoverageEligibilityResponseInsurance clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CoverageEligibilityResponseItem extends BackboneElement {
  final CodeableConcept? category;
  final CodeableConcept? productOrService;
  final List<CodeableConcept>? modifier;
  final Reference? provider;
  final FhirBoolean? excluded;
  final Element? excludedElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;
  final CodeableConcept? network;
  final CodeableConcept? unit;
  final CodeableConcept? term;
  final List<CoverageEligibilityResponseBenefit>? benefit;
  final FhirBoolean? authorizationRequired;
  final Element? authorizationRequiredElement;
  final List<CodeableConcept>? authorizationSupporting;
  final FhirUri? authorizationUrl;
  final Element? authorizationUrlElement;

  CoverageEligibilityResponseItem({
    super.id,
    super.extension_,
    super.modifierExtension,
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

@override
CoverageEligibilityResponseItem clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CoverageEligibilityResponseBenefit extends BackboneElement {
  final CodeableConcept type;
  final FhirUnsignedInt? allowedUnsignedInt;
  final Element? allowedUnsignedIntElement;
  final FhirString? allowedString;
  final Element? allowedStringElement;
  final Money? allowedMoney;
  final FhirUnsignedInt? usedUnsignedInt;
  final Element? usedUnsignedIntElement;
  final FhirString? usedString;
  final Element? usedStringElement;
  final Money? usedMoney;

  CoverageEligibilityResponseBenefit({
    super.id,
    super.extension_,
    super.modifierExtension,
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

@override
CoverageEligibilityResponseBenefit clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CoverageEligibilityResponseError extends BackboneElement {
  final CodeableConcept code;

  CoverageEligibilityResponseError({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
  });

@override
CoverageEligibilityResponseError clone() => throw UnimplementedError();
}

