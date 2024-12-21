import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CoverageEligibilityResponse]
/// This resource provides eligibility and plan details from the processing
/// of an CoverageEligibilityRequest resource.
class CoverageEligibilityResponse extends DomainResource {
  /// Primary constructor for
  /// [CoverageEligibilityResponse]

  const CoverageEligibilityResponse({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    required this.purpose,
    required this.patient,
    this.servicedX,
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
  }) : super(
          resourceType: R4ResourceType.CoverageEligibilityResponse,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return CoverageEligibilityResponse(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodes>(
        json,
        'status',
        FinancialResourceStatusCodes.fromJson,
      )!,
      purpose: JsonParser.parsePrimitiveList<EligibilityResponsePurpose>(
        json,
        'purpose',
        EligibilityResponsePurpose.fromJson,
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      )!,
      servicedX:
          JsonParser.parsePolymorphic<ServicedXCoverageEligibilityResponse>(
              json, {
        'servicedDate': FhirDate.fromJson,
        'servicedPeriod': Period.fromJson,
      }),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
      )!,
      requestor: JsonParser.parseObject<Reference>(
        json,
        'requestor',
        Reference.fromJson,
      ),
      request: JsonParser.parseObject<Reference>(
        json,
        'request',
        Reference.fromJson,
      )!,
      outcome: JsonParser.parsePrimitive<RemittanceOutcome>(
        json,
        'outcome',
        RemittanceOutcome.fromJson,
      )!,
      disposition: JsonParser.parsePrimitive<FhirString>(
        json,
        'disposition',
        FhirString.fromJson,
      ),
      insurer: JsonParser.parseObject<Reference>(
        json,
        'insurer',
        Reference.fromJson,
      )!,
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<CoverageEligibilityResponseInsurance>(
            (v) => CoverageEligibilityResponseInsurance.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      preAuthRef: JsonParser.parsePrimitive<FhirString>(
        json,
        'preAuthRef',
        FhirString.fromJson,
      ),
      form: JsonParser.parseObject<CodeableConcept>(
        json,
        'form',
        CodeableConcept.fromJson,
      ),
      error: (json['error'] as List<dynamic>?)
          ?.map<CoverageEligibilityResponseError>(
            (v) => CoverageEligibilityResponseError.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CoverageEligibilityResponse]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponse.fromJsonString(
    String source,
  ) {
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

  /// [purpose]
  /// Code to specify whether requesting: prior authorization requirements
  /// for some service categories or billing codes; benefits for coverages
  /// specified or discovered; discovery and return of coverages for the
  /// patient; and/or validation that the specified coverage is in-force at
  /// the date/period specified or 'now' if not specified.
  final List<EligibilityResponsePurpose> purpose;

  /// [patient]
  /// The party who is the beneficiary of the supplied coverage and for whom
  /// eligibility is sought.
  final Reference patient;

  /// [servicedX]
  /// The date or dates when the enclosed suite of services were performed or
  /// completed.
  final ServicedXCoverageEligibilityResponse? servicedX;

  /// [created]
  /// The date this resource was created.
  final FhirDateTime created;

  /// [requestor]
  /// The provider which is responsible for the request.
  final Reference? requestor;

  /// [request]
  /// Reference to the original request resource.
  final Reference request;

  /// [outcome]
  /// The outcome of the request processing.
  final RemittanceOutcome outcome;

  /// [disposition]
  /// A human readable description of the status of the adjudication.
  final FhirString? disposition;

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

  /// [form]
  /// A code for the form to be used for printing the content.
  final CodeableConcept? form;

  /// [error]
  /// Errors encountered during the processing of the request.
  final List<CoverageEligibilityResponseError>? error;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    if (purpose.isNotEmpty) {
      final fieldJson0 = purpose.map((e) => e.toJson()).toList();
      json['purpose'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_purpose'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    json['patient'] = patient.toJson();

    if (servicedX != null) {
      addField('serviced${servicedX!.fhirType.capitalize()}', servicedX);
    }

    addField('created', created);
    if (requestor != null) {
      json['requestor'] = requestor!.toJson();
    }

    json['request'] = request.toJson();

    addField('outcome', outcome);
    if (disposition != null) {
      addField('disposition', disposition);
    }

    json['insurer'] = insurer.toJson();

    if (insurance != null && insurance!.isNotEmpty) {
      json['insurance'] = insurance!.map((e) => e.toJson()).toList();
    }

    if (preAuthRef != null) {
      addField('preAuthRef', preAuthRef);
    }

    if (form != null) {
      json['form'] = form!.toJson();
    }

    if (error != null && error!.isNotEmpty) {
      json['error'] = error!.map((e) => e.toJson()).toList();
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
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
    List<EligibilityResponsePurpose>? purpose,
    Reference? patient,
    ServicedXCoverageEligibilityResponse? servicedX,
    FhirDateTime? created,
    Reference? requestor,
    Reference? request,
    RemittanceOutcome? outcome,
    FhirString? disposition,
    Reference? insurer,
    List<CoverageEligibilityResponseInsurance>? insurance,
    FhirString? preAuthRef,
    CodeableConcept? form,
    List<CoverageEligibilityResponseError>? error,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CoverageEligibilityResponse(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      purpose: purpose ?? this.purpose,
      patient: patient ?? this.patient,
      servicedX: servicedX ?? this.servicedX,
      created: created ?? this.created,
      requestor: requestor ?? this.requestor,
      request: request ?? this.request,
      outcome: outcome ?? this.outcome,
      disposition: disposition ?? this.disposition,
      insurer: insurer ?? this.insurer,
      insurance: insurance ?? this.insurance,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      form: form ?? this.form,
      error: error ?? this.error,
    );
  }
}

/// [CoverageEligibilityResponseInsurance]
/// Financial instruments for reimbursement for the health care products
/// and services.
class CoverageEligibilityResponseInsurance extends BackboneElement {
  /// Primary constructor for
  /// [CoverageEligibilityResponseInsurance]

  const CoverageEligibilityResponseInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.coverage,
    this.inforce,
    this.benefitPeriod,
    this.item,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseInsurance.fromJson(
    Map<String, dynamic> json,
  ) {
    return CoverageEligibilityResponseInsurance(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      coverage: JsonParser.parseObject<Reference>(
        json,
        'coverage',
        Reference.fromJson,
      )!,
      inforce: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'inforce',
        FhirBoolean.fromJson,
      ),
      benefitPeriod: JsonParser.parseObject<Period>(
        json,
        'benefitPeriod',
        Period.fromJson,
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<CoverageEligibilityResponseItem>(
            (v) => CoverageEligibilityResponseItem.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CoverageEligibilityResponseInsurance]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseInsurance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponseInsurance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponseInsurance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponseInsurance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponseInsurance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseInsurance.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['coverage'] = coverage.toJson();

    if (inforce != null) {
      addField('inforce', inforce);
    }

    if (benefitPeriod != null) {
      json['benefitPeriod'] = benefitPeriod!.toJson();
    }

    if (item != null && item!.isNotEmpty) {
      json['item'] = item!.map((e) => e.toJson()).toList();
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
    Period? benefitPeriod,
    List<CoverageEligibilityResponseItem>? item,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CoverageEligibilityResponseInsurance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      coverage: coverage ?? this.coverage,
      inforce: inforce ?? this.inforce,
      benefitPeriod: benefitPeriod ?? this.benefitPeriod,
      item: item ?? this.item,
    );
  }
}

/// [CoverageEligibilityResponseItem]
/// Benefits and optionally current balances, and authorization details by
/// category or service.
class CoverageEligibilityResponseItem extends BackboneElement {
  /// Primary constructor for
  /// [CoverageEligibilityResponseItem]

  const CoverageEligibilityResponseItem({
    super.id,
    super.extension_,
    super.modifierExtension,
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return CoverageEligibilityResponseItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
      ),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
      ),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      provider: JsonParser.parseObject<Reference>(
        json,
        'provider',
        Reference.fromJson,
      ),
      excluded: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'excluded',
        FhirBoolean.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      network: JsonParser.parseObject<CodeableConcept>(
        json,
        'network',
        CodeableConcept.fromJson,
      ),
      unit: JsonParser.parseObject<CodeableConcept>(
        json,
        'unit',
        CodeableConcept.fromJson,
      ),
      term: JsonParser.parseObject<CodeableConcept>(
        json,
        'term',
        CodeableConcept.fromJson,
      ),
      benefit: (json['benefit'] as List<dynamic>?)
          ?.map<CoverageEligibilityResponseBenefit>(
            (v) => CoverageEligibilityResponseBenefit.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      authorizationRequired: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'authorizationRequired',
        FhirBoolean.fromJson,
      ),
      authorizationSupporting:
          (json['authorizationSupporting'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList(),
      authorizationUrl: JsonParser.parsePrimitive<FhirUri>(
        json,
        'authorizationUrl',
        FhirUri.fromJson,
      ),
    );
  }

  /// Deserialize [CoverageEligibilityResponseItem]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponseItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponseItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponseItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponseItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseItem.fromJsonString(
    String source,
  ) {
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

  /// [name]
  /// A short name or tag for the benefit.
  final FhirString? name;

  /// [description]
  /// A richer description of the benefit or services covered.
  final FhirString? description;

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

  /// [authorizationSupporting]
  /// Codes or comments regarding information or actions associated with the
  /// preauthorization.
  final List<CodeableConcept>? authorizationSupporting;

  /// [authorizationUrl]
  /// A web location for obtaining requirements or descriptive information
  /// regarding the preauthorization.
  final FhirUri? authorizationUrl;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (category != null) {
      json['category'] = category!.toJson();
    }

    if (productOrService != null) {
      json['productOrService'] = productOrService!.toJson();
    }

    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] = modifier!.map((e) => e.toJson()).toList();
    }

    if (provider != null) {
      json['provider'] = provider!.toJson();
    }

    if (excluded != null) {
      addField('excluded', excluded);
    }

    if (name != null) {
      addField('name', name);
    }

    if (description != null) {
      addField('description', description);
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
      json['benefit'] = benefit!.map((e) => e.toJson()).toList();
    }

    if (authorizationRequired != null) {
      addField('authorizationRequired', authorizationRequired);
    }

    if (authorizationSupporting != null &&
        authorizationSupporting!.isNotEmpty) {
      json['authorizationSupporting'] =
          authorizationSupporting!.map((e) => e.toJson()).toList();
    }

    if (authorizationUrl != null) {
      addField('authorizationUrl', authorizationUrl);
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
    FhirString? name,
    FhirString? description,
    CodeableConcept? network,
    CodeableConcept? unit,
    CodeableConcept? term,
    List<CoverageEligibilityResponseBenefit>? benefit,
    FhirBoolean? authorizationRequired,
    List<CodeableConcept>? authorizationSupporting,
    FhirUri? authorizationUrl,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      name: name ?? this.name,
      description: description ?? this.description,
      network: network ?? this.network,
      unit: unit ?? this.unit,
      term: term ?? this.term,
      benefit: benefit ?? this.benefit,
      authorizationRequired:
          authorizationRequired ?? this.authorizationRequired,
      authorizationSupporting:
          authorizationSupporting ?? this.authorizationSupporting,
      authorizationUrl: authorizationUrl ?? this.authorizationUrl,
    );
  }
}

/// [CoverageEligibilityResponseBenefit]
/// Benefits used to date.
class CoverageEligibilityResponseBenefit extends BackboneElement {
  /// Primary constructor for
  /// [CoverageEligibilityResponseBenefit]

  const CoverageEligibilityResponseBenefit({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.allowedX,
    this.usedX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseBenefit.fromJson(
    Map<String, dynamic> json,
  ) {
    return CoverageEligibilityResponseBenefit(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      allowedX: JsonParser.parsePolymorphic<
          AllowedXCoverageEligibilityResponseBenefit>(json, {
        'allowedUnsignedInt': FhirUnsignedInt.fromJson,
        'allowedString': FhirString.fromJson,
        'allowedMoney': Money.fromJson,
      }),
      usedX:
          JsonParser.parsePolymorphic<UsedXCoverageEligibilityResponseBenefit>(
              json, {
        'usedUnsignedInt': FhirUnsignedInt.fromJson,
        'usedString': FhirString.fromJson,
        'usedMoney': Money.fromJson,
      }),
    );
  }

  /// Deserialize [CoverageEligibilityResponseBenefit]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseBenefit.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponseBenefit.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponseBenefit.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponseBenefit '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponseBenefit]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseBenefit.fromJsonString(
    String source,
  ) {
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

  /// [allowedX]
  /// The quantity of the benefit which is permitted under the coverage.
  final AllowedXCoverageEligibilityResponseBenefit? allowedX;

  /// [usedX]
  /// The quantity of the benefit which have been consumed to date.
  final UsedXCoverageEligibilityResponseBenefit? usedX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    if (allowedX != null) {
      addField('allowed${allowedX!.fhirType.capitalize()}', allowedX);
    }

    if (usedX != null) {
      addField('used${usedX!.fhirType.capitalize()}', usedX);
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
    AllowedXCoverageEligibilityResponseBenefit? allowedX,
    UsedXCoverageEligibilityResponseBenefit? usedX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CoverageEligibilityResponseBenefit(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      allowedX: allowedX ?? this.allowedX,
      usedX: usedX ?? this.usedX,
    );
  }
}

/// [CoverageEligibilityResponseError]
/// Errors encountered during the processing of the request.
class CoverageEligibilityResponseError extends BackboneElement {
  /// Primary constructor for
  /// [CoverageEligibilityResponseError]

  const CoverageEligibilityResponseError({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseError.fromJson(
    Map<String, dynamic> json,
  ) {
    return CoverageEligibilityResponseError(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
    );
  }

  /// Deserialize [CoverageEligibilityResponseError]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseError.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponseError.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponseError.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponseError '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponseError]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseError.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
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
  }) {
    return CoverageEligibilityResponseError(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
    );
  }
}
