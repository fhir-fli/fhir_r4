import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [CoverageEligibilityResponse] /// This resource provides eligibility and plan details from the processing of
/// an CoverageEligibilityRequest resource.
class CoverageEligibilityResponse extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this coverage eligiblity request.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FhirCode status;
  final Element? statusElement;

  /// [purpose] /// Code to specify whether requesting: prior authorization requirements for
  /// some service categories or billing codes; benefits for coverages specified
  /// or discovered; discovery and return of coverages for the patient; and/or
  /// validation that the specified coverage is in-force at the date/period
  /// specified or 'now' if not specified.
  final List<FhirCode> purpose;
  final List<Element>? purposeElement;

  /// [patient] /// The party who is the beneficiary of the supplied coverage and for whom
  /// eligibility is sought.
  final Reference patient;

  /// [servicedDate] /// The date or dates when the enclosed suite of services were performed or
  /// completed.
  final FhirDate? servicedDate;
  final Element? servicedDateElement;

  /// [servicedPeriod] /// The date or dates when the enclosed suite of services were performed or
  /// completed.
  final Period? servicedPeriod;

  /// [created] /// The date this resource was created.
  final FhirDateTime created;
  final Element? createdElement;

  /// [requestor] /// The provider which is responsible for the request.
  final Reference? requestor;

  /// [request] /// Reference to the original request resource.
  final Reference request;

  /// [outcome] /// The outcome of the request processing.
  final FhirCode outcome;
  final Element? outcomeElement;

  /// [disposition] /// A human readable description of the status of the adjudication.
  final FhirString? disposition;
  final Element? dispositionElement;

  /// [insurer] /// The Insurer who issued the coverage in question and is the author of the
  /// response.
  final Reference insurer;

  /// [insurance] /// Financial instruments for reimbursement for the health care products and
  /// services.
  final List<CoverageEligibilityResponseInsurance>? insurance;

  /// [preAuthRef] /// A reference from the Insurer to which these services pertain to be used on
  /// further communication and as proof that the request occurred.
  final FhirString? preAuthRef;
  final Element? preAuthRefElement;

  /// [form] /// A code for the form to be used for printing the content.
  final CodeableConcept? form;

  /// [error] /// Errors encountered during the processing of the request.
  final List<CoverageEligibilityResponseError>? error;
  @override
  CoverageEligibilityResponse clone() => throw UnimplementedError();
  CoverageEligibilityResponse copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    List<FhirCode>? purpose,
    List<Element>? purposeElement,
    Reference? patient,
    FhirDate? servicedDate,
    Element? servicedDateElement,
    Period? servicedPeriod,
    FhirDateTime? created,
    Element? createdElement,
    Reference? requestor,
    Reference? request,
    FhirCode? outcome,
    Element? outcomeElement,
    FhirString? disposition,
    Element? dispositionElement,
    Reference? insurer,
    List<CoverageEligibilityResponseInsurance>? insurance,
    FhirString? preAuthRef,
    Element? preAuthRefElement,
    CodeableConcept? form,
    List<CoverageEligibilityResponseError>? error,
  }) {
    return CoverageEligibilityResponse(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      patient: patient ?? this.patient,
      servicedDate: servicedDate ?? this.servicedDate,
      servicedDateElement: servicedDateElement ?? this.servicedDateElement,
      servicedPeriod: servicedPeriod ?? this.servicedPeriod,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      requestor: requestor ?? this.requestor,
      request: request ?? this.request,
      outcome: outcome ?? this.outcome,
      outcomeElement: outcomeElement ?? this.outcomeElement,
      disposition: disposition ?? this.disposition,
      dispositionElement: dispositionElement ?? this.dispositionElement,
      insurer: insurer ?? this.insurer,
      insurance: insurance ?? this.insurance,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      preAuthRefElement: preAuthRefElement ?? this.preAuthRefElement,
      form: form ?? this.form,
      error: error ?? this.error,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CoverageEligibilityResponseInsurance] /// Financial instruments for reimbursement for the health care products and
/// services.
class CoverageEligibilityResponseInsurance extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [coverage] /// Reference to the insurance card level information contained in the Coverage
  /// resource. The coverage issuing insurer will use these details to locate the
  /// patient's actual coverage within the insurer's information system.
  final Reference coverage;

  /// [inforce] /// Flag indicating if the coverage provided is inforce currently if no service
  /// date(s) specified or for the whole duration of the service dates.
  final FhirBoolean? inforce;
  final Element? inforceElement;

  /// [benefitPeriod] /// The term of the benefits documented in this response.
  final Period? benefitPeriod;

  /// [item] /// Benefits and optionally current balances, and authorization details by
  /// category or service.
  final List<CoverageEligibilityResponseItem>? item;
  @override
  CoverageEligibilityResponseInsurance clone() => throw UnimplementedError();
  CoverageEligibilityResponseInsurance copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? coverage,
    FhirBoolean? inforce,
    Element? inforceElement,
    Period? benefitPeriod,
    List<CoverageEligibilityResponseItem>? item,
  }) {
    return CoverageEligibilityResponseInsurance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      coverage: coverage ?? this.coverage,
      inforce: inforce ?? this.inforce,
      inforceElement: inforceElement ?? this.inforceElement,
      benefitPeriod: benefitPeriod ?? this.benefitPeriod,
      item: item ?? this.item,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CoverageEligibilityResponseItem] /// Benefits and optionally current balances, and authorization details by
/// category or service.
class CoverageEligibilityResponseItem extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// Code to identify the general type of benefits under which products and
  /// services are provided.
  final CodeableConcept? category;

  /// [productOrService] /// This contains the product, service, drug or other billing code for the
  /// item.
  final CodeableConcept? productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  final List<CodeableConcept>? modifier;

  /// [provider] /// The practitioner who is eligible for the provision of the product or
  /// service.
  final Reference? provider;

  /// [excluded] /// True if the indicated class of service is excluded from the plan, missing
  /// or False indicates the product or service is included in the coverage.
  final FhirBoolean? excluded;
  final Element? excludedElement;

  /// [name] /// A short name or tag for the benefit.
  final FhirString? name;
  final Element? nameElement;

  /// [description] /// A richer description of the benefit or services covered.
  final FhirString? description;
  final Element? descriptionElement;

  /// [network] /// Is a flag to indicate whether the benefits refer to in-network providers or
  /// out-of-network providers.
  final CodeableConcept? network;

  /// [unit] /// Indicates if the benefits apply to an individual or to the family.
  final CodeableConcept? unit;

  /// [term] /// The term or period of the values such as 'maximum lifetime benefit' or
  /// 'maximum annual visits'.
  final CodeableConcept? term;

  /// [benefit] /// Benefits used to date.
  final List<CoverageEligibilityResponseBenefit>? benefit;

  /// [authorizationRequired] /// A boolean flag indicating whether a preauthorization is required prior to
  /// actual service delivery.
  final FhirBoolean? authorizationRequired;
  final Element? authorizationRequiredElement;

  /// [authorizationSupporting] /// Codes or comments regarding information or actions associated with the
  /// preauthorization.
  final List<CodeableConcept>? authorizationSupporting;

  /// [authorizationUrl] /// A web location for obtaining requirements or descriptive information
  /// regarding the preauthorization.
  final FhirUri? authorizationUrl;
  final Element? authorizationUrlElement;
  @override
  CoverageEligibilityResponseItem clone() => throw UnimplementedError();
  CoverageEligibilityResponseItem copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Reference? provider,
    FhirBoolean? excluded,
    Element? excludedElement,
    FhirString? name,
    Element? nameElement,
    FhirString? description,
    Element? descriptionElement,
    CodeableConcept? network,
    CodeableConcept? unit,
    CodeableConcept? term,
    List<CoverageEligibilityResponseBenefit>? benefit,
    FhirBoolean? authorizationRequired,
    Element? authorizationRequiredElement,
    List<CodeableConcept>? authorizationSupporting,
    FhirUri? authorizationUrl,
    Element? authorizationUrlElement,
  }) {
    return CoverageEligibilityResponseItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      provider: provider ?? this.provider,
      excluded: excluded ?? this.excluded,
      excludedElement: excludedElement ?? this.excludedElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      network: network ?? this.network,
      unit: unit ?? this.unit,
      term: term ?? this.term,
      benefit: benefit ?? this.benefit,
      authorizationRequired:
          authorizationRequired ?? this.authorizationRequired,
      authorizationRequiredElement:
          authorizationRequiredElement ?? this.authorizationRequiredElement,
      authorizationSupporting:
          authorizationSupporting ?? this.authorizationSupporting,
      authorizationUrl: authorizationUrl ?? this.authorizationUrl,
      authorizationUrlElement:
          authorizationUrlElement ?? this.authorizationUrlElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CoverageEligibilityResponseBenefit] /// Benefits used to date.
class CoverageEligibilityResponseBenefit extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Classification of benefit being provided.
  final CodeableConcept type;

  /// [allowedUnsignedInt] /// The quantity of the benefit which is permitted under the coverage.
  final FhirUnsignedInt? allowedUnsignedInt;
  final Element? allowedUnsignedIntElement;

  /// [allowedString] /// The quantity of the benefit which is permitted under the coverage.
  final FhirString? allowedString;
  final Element? allowedStringElement;

  /// [allowedMoney] /// The quantity of the benefit which is permitted under the coverage.
  final Money? allowedMoney;

  /// [usedUnsignedInt] /// The quantity of the benefit which have been consumed to date.
  final FhirUnsignedInt? usedUnsignedInt;
  final Element? usedUnsignedIntElement;

  /// [usedString] /// The quantity of the benefit which have been consumed to date.
  final FhirString? usedString;
  final Element? usedStringElement;

  /// [usedMoney] /// The quantity of the benefit which have been consumed to date.
  final Money? usedMoney;
  @override
  CoverageEligibilityResponseBenefit clone() => throw UnimplementedError();
  CoverageEligibilityResponseBenefit copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirUnsignedInt? allowedUnsignedInt,
    Element? allowedUnsignedIntElement,
    FhirString? allowedString,
    Element? allowedStringElement,
    Money? allowedMoney,
    FhirUnsignedInt? usedUnsignedInt,
    Element? usedUnsignedIntElement,
    FhirString? usedString,
    Element? usedStringElement,
    Money? usedMoney,
  }) {
    return CoverageEligibilityResponseBenefit(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      allowedUnsignedInt: allowedUnsignedInt ?? this.allowedUnsignedInt,
      allowedUnsignedIntElement:
          allowedUnsignedIntElement ?? this.allowedUnsignedIntElement,
      allowedString: allowedString ?? this.allowedString,
      allowedStringElement: allowedStringElement ?? this.allowedStringElement,
      allowedMoney: allowedMoney ?? this.allowedMoney,
      usedUnsignedInt: usedUnsignedInt ?? this.usedUnsignedInt,
      usedUnsignedIntElement:
          usedUnsignedIntElement ?? this.usedUnsignedIntElement,
      usedString: usedString ?? this.usedString,
      usedStringElement: usedStringElement ?? this.usedStringElement,
      usedMoney: usedMoney ?? this.usedMoney,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CoverageEligibilityResponseError] /// Errors encountered during the processing of the request.
class CoverageEligibilityResponseError extends BackboneElement {
  CoverageEligibilityResponseError({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// An error code,from a specified code system, which details why the
  /// eligibility check could not be performed.
  final CodeableConcept code;
  @override
  CoverageEligibilityResponseError clone() => throw UnimplementedError();
  CoverageEligibilityResponseError copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
  }) {
    return CoverageEligibilityResponseError(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
    );
  }
}
