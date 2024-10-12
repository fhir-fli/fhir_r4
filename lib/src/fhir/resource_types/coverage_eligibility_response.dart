import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CoverageEligibilityResponse]
/// This resource provides eligibility and plan details from the processing
/// of an CoverageEligibilityRequest resource.
class CoverageEligibilityResponse extends DomainResource {
  /// Primary constructor for [CoverageEligibilityResponse]

  CoverageEligibilityResponse({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    required this.purpose,

    /// Extensions for [purpose]
    this.purposeElement,
    required this.patient,
    this.servicedDate,

    /// Extensions for [servicedDate]
    this.servicedDateElement,
    this.servicedPeriod,
    required this.created,

    /// Extensions for [created]
    this.createdElement,
    this.requestor,
    required this.request,
    required this.outcome,

    /// Extensions for [outcome]
    this.outcomeElement,
    this.disposition,

    /// Extensions for [disposition]
    this.dispositionElement,
    required this.insurer,
    this.insurance,
    this.preAuthRef,

    /// Extensions for [preAuthRef]
    this.preAuthRefElement,
    this.form,
    this.error,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.CoverageEligibilityResponse,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponse.fromJson(Map<String, dynamic> json) {
    return CoverageEligibilityResponse(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: FinancialResourceStatusCodes.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      purpose: (json['purpose'] as List<dynamic>)
          .map<EligibilityResponsePurpose>(
              (dynamic v) => EligibilityResponsePurpose.fromJson(v as dynamic))
          .toList(),
      purposeElement: json['_purpose'] != null
          ? (json['_purpose'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      patient: Reference.fromJson(
        json['patient'] as Map<String, dynamic>,
      ),
      servicedDate: json['servicedDate'] != null
          ? FhirDate.fromJson(json['servicedDate'])
          : null,
      servicedDateElement: json['_servicedDate'] != null
          ? Element.fromJson(
              json['_servicedDate'] as Map<String, dynamic>,
            )
          : null,
      servicedPeriod: json['servicedPeriod'] != null
          ? Period.fromJson(
              json['servicedPeriod'] as Map<String, dynamic>,
            )
          : null,
      created: FhirDateTime.fromJson(json['created']),
      createdElement: json['_created'] != null
          ? Element.fromJson(
              json['_created'] as Map<String, dynamic>,
            )
          : null,
      requestor: json['requestor'] != null
          ? Reference.fromJson(
              json['requestor'] as Map<String, dynamic>,
            )
          : null,
      request: Reference.fromJson(
        json['request'] as Map<String, dynamic>,
      ),
      outcome: RemittanceOutcome.fromJson(json['outcome']),
      outcomeElement: json['_outcome'] != null
          ? Element.fromJson(
              json['_outcome'] as Map<String, dynamic>,
            )
          : null,
      disposition: json['disposition'] != null
          ? FhirString.fromJson(json['disposition'])
          : null,
      dispositionElement: json['_disposition'] != null
          ? Element.fromJson(
              json['_disposition'] as Map<String, dynamic>,
            )
          : null,
      insurer: Reference.fromJson(
        json['insurer'] as Map<String, dynamic>,
      ),
      insurance: json['insurance'] != null
          ? (json['insurance'] as List<dynamic>)
              .map<CoverageEligibilityResponseInsurance>(
                (dynamic v) => CoverageEligibilityResponseInsurance.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      preAuthRef: json['preAuthRef'] != null
          ? FhirString.fromJson(json['preAuthRef'])
          : null,
      preAuthRefElement: json['_preAuthRef'] != null
          ? Element.fromJson(
              json['_preAuthRef'] as Map<String, dynamic>,
            )
          : null,
      form: json['form'] != null
          ? CodeableConcept.fromJson(
              json['form'] as Map<String, dynamic>,
            )
          : null,
      error: json['error'] != null
          ? (json['error'] as List<dynamic>)
              .map<CoverageEligibilityResponseError>(
                (dynamic v) => CoverageEligibilityResponseError.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CoverageEligibilityResponse] from a [String] or [YamlMap] object
  factory CoverageEligibilityResponse.fromYaml(dynamic yaml) => yaml is String
      ? CoverageEligibilityResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CoverageEligibilityResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CoverageEligibilityResponse cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CoverageEligibilityResponse] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageEligibilityResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityResponse';

  /// [identifier]
  /// A unique identifier assigned to this coverage eligiblity request.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the resource instance.
  final FinancialResourceStatusCodes status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [purpose]
  /// Code to specify whether requesting: prior authorization requirements
  /// for some service categories or billing codes; benefits for coverages
  /// specified or discovered; discovery and return of coverages for the
  /// patient; and/or validation that the specified coverage is in-force at
  /// the date/period specified or 'now' if not specified.
  final List<EligibilityResponsePurpose> purpose;

  /// Extensions for [purpose]
  final List<Element>? purposeElement;

  /// [patient]
  /// The party who is the beneficiary of the supplied coverage and for whom
  /// eligibility is sought.
  final Reference patient;

  /// [servicedDate]
  /// The date or dates when the enclosed suite of services were performed or
  /// completed.
  final FhirDate? servicedDate;

  /// Extensions for [servicedDate]
  final Element? servicedDateElement;

  /// [servicedPeriod]
  /// The date or dates when the enclosed suite of services were performed or
  /// completed.
  final Period? servicedPeriod;

  /// [created]
  /// The date this resource was created.
  final FhirDateTime created;

  /// Extensions for [created]
  final Element? createdElement;

  /// [requestor]
  /// The provider which is responsible for the request.
  final Reference? requestor;

  /// [request]
  /// Reference to the original request resource.
  final Reference request;

  /// [outcome]
  /// The outcome of the request processing.
  final RemittanceOutcome outcome;

  /// Extensions for [outcome]
  final Element? outcomeElement;

  /// [disposition]
  /// A human readable description of the status of the adjudication.
  final FhirString? disposition;

  /// Extensions for [disposition]
  final Element? dispositionElement;

  /// [insurer]
  /// The Insurer who issued the coverage in question and is the author of
  /// the response.
  final Reference insurer;

  /// [insurance]
  /// Financial instruments for reimbursement for the health care products
  /// and services.
  final List<CoverageEligibilityResponseInsurance>? insurance;

  /// [preAuthRef]
  /// A reference from the Insurer to which these services pertain to be used
  /// on further communication and as proof that the request occurred.
  final FhirString? preAuthRef;

  /// Extensions for [preAuthRef]
  final Element? preAuthRefElement;

  /// [form]
  /// A code for the form to be used for printing the content.
  final CodeableConcept? form;

  /// [error]
  /// Errors encountered during the processing of the request.
  final List<CoverageEligibilityResponseError>? error;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    json['purpose'] = purpose
        .map<dynamic>((EligibilityResponsePurpose v) => v.toJson())
        .toList();
    json['patient'] = patient.toJson();
    if (servicedDate?.value != null) {
      json['servicedDate'] = servicedDate!.toJson();
    }
    if (servicedDateElement != null) {
      json['_servicedDate'] = servicedDateElement!.toJson();
    }
    if (servicedPeriod != null) {
      json['servicedPeriod'] = servicedPeriod!.toJson();
    }
    json['created'] = created.toJson();
    if (createdElement != null) {
      json['_created'] = createdElement!.toJson();
    }
    if (requestor != null) {
      json['requestor'] = requestor!.toJson();
    }
    json['request'] = request.toJson();
    json['outcome'] = outcome.toJson();
    if (disposition?.value != null) {
      json['disposition'] = disposition!.toJson();
    }
    if (dispositionElement != null) {
      json['_disposition'] = dispositionElement!.toJson();
    }
    json['insurer'] = insurer.toJson();
    if (insurance != null && insurance!.isNotEmpty) {
      json['insurance'] = insurance!
          .map((CoverageEligibilityResponseInsurance v) => v.toJson())
          .toList();
    }
    if (preAuthRef?.value != null) {
      json['preAuthRef'] = preAuthRef!.toJson();
    }
    if (preAuthRefElement != null) {
      json['_preAuthRef'] = preAuthRefElement!.toJson();
    }
    if (form != null) {
      json['form'] = form!.toJson();
    }
    if (error != null && error!.isNotEmpty) {
      json['error'] = error!
          .map((CoverageEligibilityResponseError v) => v.toJson())
          .toList();
    }
    return json;
  }

  @override
  CoverageEligibilityResponse clone() => throw UnimplementedError();
  @override
  CoverageEligibilityResponse copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
    Element? statusElement,
    List<EligibilityResponsePurpose>? purpose,
    List<Element>? purposeElement,
    Reference? patient,
    FhirDate? servicedDate,
    Element? servicedDateElement,
    Period? servicedPeriod,
    FhirDateTime? created,
    Element? createdElement,
    Reference? requestor,
    Reference? request,
    RemittanceOutcome? outcome,
    Element? outcomeElement,
    FhirString? disposition,
    Element? dispositionElement,
    Reference? insurer,
    List<CoverageEligibilityResponseInsurance>? insurance,
    FhirString? preAuthRef,
    Element? preAuthRefElement,
    CodeableConcept? form,
    List<CoverageEligibilityResponseError>? error,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [CoverageEligibilityResponseInsurance]
/// Financial instruments for reimbursement for the health care products
/// and services.
class CoverageEligibilityResponseInsurance extends BackboneElement {
  /// Primary constructor for [CoverageEligibilityResponseInsurance]

  CoverageEligibilityResponseInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.coverage,
    this.inforce,

    /// Extensions for [inforce]
    this.inforceElement,
    this.benefitPeriod,
    this.item,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseInsurance.fromJson(
      Map<String, dynamic> json) {
    return CoverageEligibilityResponseInsurance(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      coverage: Reference.fromJson(
        json['coverage'] as Map<String, dynamic>,
      ),
      inforce: json['inforce'] != null
          ? FhirBoolean.fromJson(json['inforce'])
          : null,
      inforceElement: json['_inforce'] != null
          ? Element.fromJson(
              json['_inforce'] as Map<String, dynamic>,
            )
          : null,
      benefitPeriod: json['benefitPeriod'] != null
          ? Period.fromJson(
              json['benefitPeriod'] as Map<String, dynamic>,
            )
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<CoverageEligibilityResponseItem>(
                (dynamic v) => CoverageEligibilityResponseItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CoverageEligibilityResponseInsurance] from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseInsurance.fromYaml(dynamic yaml) => yaml
          is String
      ? CoverageEligibilityResponseInsurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CoverageEligibilityResponseInsurance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CoverageEligibilityResponseInsurance cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CoverageEligibilityResponseInsurance] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseInsurance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageEligibilityResponseInsurance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityResponseInsurance';

  /// [coverage]
  /// Reference to the insurance card level information contained in the
  /// Coverage resource. The coverage issuing insurer will use these details
  /// to locate the patient's actual coverage within the insurer's
  /// information system.
  final Reference coverage;

  /// [inforce]
  /// Flag indicating if the coverage provided is inforce currently if no
  /// service date(s) specified or for the whole duration of the service
  /// dates.
  final FhirBoolean? inforce;

  /// Extensions for [inforce]
  final Element? inforceElement;

  /// [benefitPeriod]
  /// The term of the benefits documented in this response.
  final Period? benefitPeriod;

  /// [item]
  /// Benefits and optionally current balances, and authorization details by
  /// category or service.
  final List<CoverageEligibilityResponseItem>? item;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['coverage'] = coverage.toJson();
    if (inforce?.value != null) {
      json['inforce'] = inforce!.toJson();
    }
    if (inforceElement != null) {
      json['_inforce'] = inforceElement!.toJson();
    }
    if (benefitPeriod != null) {
      json['benefitPeriod'] = benefitPeriod!.toJson();
    }
    if (item != null && item!.isNotEmpty) {
      json['item'] =
          item!.map((CoverageEligibilityResponseItem v) => v.toJson()).toList();
    }
    return json;
  }

  @override
  CoverageEligibilityResponseInsurance clone() => throw UnimplementedError();
  @override
  CoverageEligibilityResponseInsurance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? coverage,
    FhirBoolean? inforce,
    Element? inforceElement,
    Period? benefitPeriod,
    List<CoverageEligibilityResponseItem>? item,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [CoverageEligibilityResponseItem]
/// Benefits and optionally current balances, and authorization details by
/// category or service.
class CoverageEligibilityResponseItem extends BackboneElement {
  /// Primary constructor for [CoverageEligibilityResponseItem]

  CoverageEligibilityResponseItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.productOrService,
    this.modifier,
    this.provider,
    this.excluded,

    /// Extensions for [excluded]
    this.excludedElement,
    this.name,

    /// Extensions for [name]
    this.nameElement,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    this.network,
    this.unit,
    this.term,
    this.benefit,
    this.authorizationRequired,

    /// Extensions for [authorizationRequired]
    this.authorizationRequiredElement,
    this.authorizationSupporting,
    this.authorizationUrl,

    /// Extensions for [authorizationUrl]
    this.authorizationUrlElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseItem.fromJson(Map<String, dynamic> json) {
    return CoverageEligibilityResponseItem(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(
              json['category'] as Map<String, dynamic>,
            )
          : null,
      productOrService: json['productOrService'] != null
          ? CodeableConcept.fromJson(
              json['productOrService'] as Map<String, dynamic>,
            )
          : null,
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      provider: json['provider'] != null
          ? Reference.fromJson(
              json['provider'] as Map<String, dynamic>,
            )
          : null,
      excluded: json['excluded'] != null
          ? FhirBoolean.fromJson(json['excluded'])
          : null,
      excludedElement: json['_excluded'] != null
          ? Element.fromJson(
              json['_excluded'] as Map<String, dynamic>,
            )
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(
              json['_name'] as Map<String, dynamic>,
            )
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      network: json['network'] != null
          ? CodeableConcept.fromJson(
              json['network'] as Map<String, dynamic>,
            )
          : null,
      unit: json['unit'] != null
          ? CodeableConcept.fromJson(
              json['unit'] as Map<String, dynamic>,
            )
          : null,
      term: json['term'] != null
          ? CodeableConcept.fromJson(
              json['term'] as Map<String, dynamic>,
            )
          : null,
      benefit: json['benefit'] != null
          ? (json['benefit'] as List<dynamic>)
              .map<CoverageEligibilityResponseBenefit>(
                (dynamic v) => CoverageEligibilityResponseBenefit.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      authorizationRequired: json['authorizationRequired'] != null
          ? FhirBoolean.fromJson(json['authorizationRequired'])
          : null,
      authorizationRequiredElement: json['_authorizationRequired'] != null
          ? Element.fromJson(
              json['_authorizationRequired'] as Map<String, dynamic>,
            )
          : null,
      authorizationSupporting: json['authorizationSupporting'] != null
          ? (json['authorizationSupporting'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      authorizationUrl: json['authorizationUrl'] != null
          ? FhirUri.fromJson(json['authorizationUrl'])
          : null,
      authorizationUrlElement: json['_authorizationUrl'] != null
          ? Element.fromJson(
              json['_authorizationUrl'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CoverageEligibilityResponseItem] from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseItem.fromYaml(dynamic yaml) => yaml
          is String
      ? CoverageEligibilityResponseItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CoverageEligibilityResponseItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CoverageEligibilityResponseItem cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CoverageEligibilityResponseItem] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageEligibilityResponseItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityResponseItem';

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  final CodeableConcept? category;

  /// [productOrService]
  /// This contains the product, service, drug or other billing code for the
  /// item.
  final CodeableConcept? productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  final List<CodeableConcept>? modifier;

  /// [provider]
  /// The practitioner who is eligible for the provision of the product or
  /// service.
  final Reference? provider;

  /// [excluded]
  /// True if the indicated class of service is excluded from the plan,
  /// missing or False indicates the product or service is included in the
  /// coverage.
  final FhirBoolean? excluded;

  /// Extensions for [excluded]
  final Element? excludedElement;

  /// [name]
  /// A short name or tag for the benefit.
  final FhirString? name;

  /// Extensions for [name]
  final Element? nameElement;

  /// [description]
  /// A richer description of the benefit or services covered.
  final FhirString? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [network]
  /// Is a flag to indicate whether the benefits refer to in-network
  /// providers or out-of-network providers.
  final CodeableConcept? network;

  /// [unit]
  /// Indicates if the benefits apply to an individual or to the family.
  final CodeableConcept? unit;

  /// [term]
  /// The term or period of the values such as 'maximum lifetime benefit' or
  /// 'maximum annual visits'.
  final CodeableConcept? term;

  /// [benefit]
  /// Benefits used to date.
  final List<CoverageEligibilityResponseBenefit>? benefit;

  /// [authorizationRequired]
  /// A boolean flag indicating whether a preauthorization is required prior
  /// to actual service delivery.
  final FhirBoolean? authorizationRequired;

  /// Extensions for [authorizationRequired]
  final Element? authorizationRequiredElement;

  /// [authorizationSupporting]
  /// Codes or comments regarding information or actions associated with the
  /// preauthorization.
  final List<CodeableConcept>? authorizationSupporting;

  /// [authorizationUrl]
  /// A web location for obtaining requirements or descriptive information
  /// regarding the preauthorization.
  final FhirUri? authorizationUrl;

  /// Extensions for [authorizationUrl]
  final Element? authorizationUrlElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (category != null) {
      json['category'] = category!.toJson();
    }
    if (productOrService != null) {
      json['productOrService'] = productOrService!.toJson();
    }
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (provider != null) {
      json['provider'] = provider!.toJson();
    }
    if (excluded?.value != null) {
      json['excluded'] = excluded!.toJson();
    }
    if (excludedElement != null) {
      json['_excluded'] = excludedElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (network != null) {
      json['network'] = network!.toJson();
    }
    if (unit != null) {
      json['unit'] = unit!.toJson();
    }
    if (term != null) {
      json['term'] = term!.toJson();
    }
    if (benefit != null && benefit!.isNotEmpty) {
      json['benefit'] = benefit!
          .map((CoverageEligibilityResponseBenefit v) => v.toJson())
          .toList();
    }
    if (authorizationRequired?.value != null) {
      json['authorizationRequired'] = authorizationRequired!.toJson();
    }
    if (authorizationRequiredElement != null) {
      json['_authorizationRequired'] = authorizationRequiredElement!.toJson();
    }
    if (authorizationSupporting != null &&
        authorizationSupporting!.isNotEmpty) {
      json['authorizationSupporting'] = authorizationSupporting!
          .map((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (authorizationUrl?.value != null) {
      json['authorizationUrl'] = authorizationUrl!.toJson();
    }
    if (authorizationUrlElement != null) {
      json['_authorizationUrl'] = authorizationUrlElement!.toJson();
    }
    return json;
  }

  @override
  CoverageEligibilityResponseItem clone() => throw UnimplementedError();
  @override
  CoverageEligibilityResponseItem copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [CoverageEligibilityResponseBenefit]
/// Benefits used to date.
class CoverageEligibilityResponseBenefit extends BackboneElement {
  /// Primary constructor for [CoverageEligibilityResponseBenefit]

  CoverageEligibilityResponseBenefit({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.allowedUnsignedInt,

    /// Extensions for [allowedUnsignedInt]
    this.allowedUnsignedIntElement,
    this.allowedString,

    /// Extensions for [allowedString]
    this.allowedStringElement,
    this.allowedMoney,
    this.usedUnsignedInt,

    /// Extensions for [usedUnsignedInt]
    this.usedUnsignedIntElement,
    this.usedString,

    /// Extensions for [usedString]
    this.usedStringElement,
    this.usedMoney,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseBenefit.fromJson(
      Map<String, dynamic> json) {
    return CoverageEligibilityResponseBenefit(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      allowedUnsignedInt: json['allowedUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson(json['allowedUnsignedInt'])
          : null,
      allowedUnsignedIntElement: json['_allowedUnsignedInt'] != null
          ? Element.fromJson(
              json['_allowedUnsignedInt'] as Map<String, dynamic>,
            )
          : null,
      allowedString: json['allowedString'] != null
          ? FhirString.fromJson(json['allowedString'])
          : null,
      allowedStringElement: json['_allowedString'] != null
          ? Element.fromJson(
              json['_allowedString'] as Map<String, dynamic>,
            )
          : null,
      allowedMoney: json['allowedMoney'] != null
          ? Money.fromJson(
              json['allowedMoney'] as Map<String, dynamic>,
            )
          : null,
      usedUnsignedInt: json['usedUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson(json['usedUnsignedInt'])
          : null,
      usedUnsignedIntElement: json['_usedUnsignedInt'] != null
          ? Element.fromJson(
              json['_usedUnsignedInt'] as Map<String, dynamic>,
            )
          : null,
      usedString: json['usedString'] != null
          ? FhirString.fromJson(json['usedString'])
          : null,
      usedStringElement: json['_usedString'] != null
          ? Element.fromJson(
              json['_usedString'] as Map<String, dynamic>,
            )
          : null,
      usedMoney: json['usedMoney'] != null
          ? Money.fromJson(
              json['usedMoney'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CoverageEligibilityResponseBenefit] from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseBenefit.fromYaml(dynamic yaml) => yaml
          is String
      ? CoverageEligibilityResponseBenefit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CoverageEligibilityResponseBenefit.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CoverageEligibilityResponseBenefit cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CoverageEligibilityResponseBenefit] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseBenefit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageEligibilityResponseBenefit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityResponseBenefit';

  /// [type]
  /// Classification of benefit being provided.
  final CodeableConcept type;

  /// [allowedUnsignedInt]
  /// The quantity of the benefit which is permitted under the coverage.
  final FhirUnsignedInt? allowedUnsignedInt;

  /// Extensions for [allowedUnsignedInt]
  final Element? allowedUnsignedIntElement;

  /// [allowedString]
  /// The quantity of the benefit which is permitted under the coverage.
  final FhirString? allowedString;

  /// Extensions for [allowedString]
  final Element? allowedStringElement;

  /// [allowedMoney]
  /// The quantity of the benefit which is permitted under the coverage.
  final Money? allowedMoney;

  /// [usedUnsignedInt]
  /// The quantity of the benefit which have been consumed to date.
  final FhirUnsignedInt? usedUnsignedInt;

  /// Extensions for [usedUnsignedInt]
  final Element? usedUnsignedIntElement;

  /// [usedString]
  /// The quantity of the benefit which have been consumed to date.
  final FhirString? usedString;

  /// Extensions for [usedString]
  final Element? usedStringElement;

  /// [usedMoney]
  /// The quantity of the benefit which have been consumed to date.
  final Money? usedMoney;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['type'] = type.toJson();
    if (allowedUnsignedInt?.value != null) {
      json['allowedUnsignedInt'] = allowedUnsignedInt!.toJson();
    }
    if (allowedUnsignedIntElement != null) {
      json['_allowedUnsignedInt'] = allowedUnsignedIntElement!.toJson();
    }
    if (allowedString?.value != null) {
      json['allowedString'] = allowedString!.toJson();
    }
    if (allowedStringElement != null) {
      json['_allowedString'] = allowedStringElement!.toJson();
    }
    if (allowedMoney != null) {
      json['allowedMoney'] = allowedMoney!.toJson();
    }
    if (usedUnsignedInt?.value != null) {
      json['usedUnsignedInt'] = usedUnsignedInt!.toJson();
    }
    if (usedUnsignedIntElement != null) {
      json['_usedUnsignedInt'] = usedUnsignedIntElement!.toJson();
    }
    if (usedString?.value != null) {
      json['usedString'] = usedString!.toJson();
    }
    if (usedStringElement != null) {
      json['_usedString'] = usedStringElement!.toJson();
    }
    if (usedMoney != null) {
      json['usedMoney'] = usedMoney!.toJson();
    }
    return json;
  }

  @override
  CoverageEligibilityResponseBenefit clone() => throw UnimplementedError();
  @override
  CoverageEligibilityResponseBenefit copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [CoverageEligibilityResponseError]
/// Errors encountered during the processing of the request.
class CoverageEligibilityResponseError extends BackboneElement {
  /// Primary constructor for [CoverageEligibilityResponseError]

  CoverageEligibilityResponseError({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseError.fromJson(Map<String, dynamic> json) {
    return CoverageEligibilityResponseError(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [CoverageEligibilityResponseError] from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseError.fromYaml(dynamic yaml) => yaml
          is String
      ? CoverageEligibilityResponseError.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CoverageEligibilityResponseError.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CoverageEligibilityResponseError cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CoverageEligibilityResponseError] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseError.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageEligibilityResponseError.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityResponseError';

  /// [code]
  /// An error code,from a specified code system, which details why the
  /// eligibility check could not be performed.
  final CodeableConcept code;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['code'] = code.toJson();
    return json;
  }

  @override
  CoverageEligibilityResponseError clone() => throw UnimplementedError();
  @override
  CoverageEligibilityResponseError copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CoverageEligibilityResponseError(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
